
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmap_elem {int cnt; int lock; } ;
struct cls_elem {int lock; int cnt; } ;
struct bpf_vqueue {int volatile credit; unsigned long long lasttime; int lock; int rate; } ;
struct __sk_buff {int dummy; } ;


 scalar_t__ CREDIT_PER_NS (unsigned long long,int ) ;
 struct cls_elem* bpf_get_local_storage (int *,int ) ;
 unsigned long long bpf_ktime_get_ns () ;
 void* bpf_map_lookup_elem (int *,int*) ;
 int bpf_map_update_elem (int *,int*,struct hmap_elem*,int ) ;
 int bpf_spin_lock (int *) ;
 int bpf_spin_unlock (int *) ;
 int cls_map ;
 int hmap ;
 int vqueue ;

int bpf_sping_lock_test(struct __sk_buff *skb)
{
 volatile int credit = 0, max_credit = 100, pkt_len = 64;
 struct hmap_elem zero = {}, *val;
 unsigned long long curtime;
 struct bpf_vqueue *q;
 struct cls_elem *cls;
 int key = 0;
 int err = 0;

 val = bpf_map_lookup_elem(&hmap, &key);
 if (!val) {
  bpf_map_update_elem(&hmap, &key, &zero, 0);
  val = bpf_map_lookup_elem(&hmap, &key);
  if (!val) {
   err = 1;
   goto err;
  }
 }

 bpf_spin_lock(&val->lock);
 if (val->cnt)
  val->cnt--;
 else
  val->cnt++;
 if (val->cnt != 0 && val->cnt != 1)
  err = 1;
 bpf_spin_unlock(&val->lock);


 q = bpf_map_lookup_elem(&vqueue, &key);
 if (!q)
  goto err;
 curtime = bpf_ktime_get_ns();
 bpf_spin_lock(&q->lock);
 q->credit += CREDIT_PER_NS(curtime - q->lasttime, q->rate);
 q->lasttime = curtime;
 if (q->credit > max_credit)
  q->credit = max_credit;
 q->credit -= pkt_len;
 credit = q->credit;
 bpf_spin_unlock(&q->lock);


 cls = bpf_get_local_storage(&cls_map, 0);
 bpf_spin_lock(&cls->lock);
 cls->cnt++;
 bpf_spin_unlock(&cls->lock);

err:
 return err;
}
