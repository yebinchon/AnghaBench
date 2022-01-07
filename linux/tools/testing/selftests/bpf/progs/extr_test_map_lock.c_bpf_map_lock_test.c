
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmap_elem {int* var; int lock; } ;
struct array_elem {int* var; int lock; } ;
struct __sk_buff {int dummy; } ;


 int VAR_NUM ;
 int array_map ;
 int bpf_get_prandom_u32 () ;
 void* bpf_map_lookup_elem (int *,int*) ;
 int bpf_spin_lock (int *) ;
 int bpf_spin_unlock (int *) ;
 int hash_map ;

int bpf_map_lock_test(struct __sk_buff *skb)
{
 struct hmap_elem zero = {}, *val;
 int rnd = bpf_get_prandom_u32();
 int key = 0, err = 1, i;
 struct array_elem *q;

 val = bpf_map_lookup_elem(&hash_map, &key);
 if (!val)
  goto err;

 bpf_spin_lock(&val->lock);
 for (i = 0; i < VAR_NUM; i++)
  val->var[i] = rnd;
 bpf_spin_unlock(&val->lock);


 q = bpf_map_lookup_elem(&array_map, &key);
 if (!q)
  goto err;
 bpf_spin_lock(&q->lock);
 for (i = 0; i < VAR_NUM; i++)
  q->var[i] = rnd;
 bpf_spin_unlock(&q->lock);
 err = 0;
err:
 return err;
}
