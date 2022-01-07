
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_congestion_ops {scalar_t__ key; int name; int list; scalar_t__ cong_control; scalar_t__ cong_avoid; int undo_cwnd; int ssthresh; } ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ TCP_CA_UNSPEC ;
 scalar_t__ jhash (int ,int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int pr_notice (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (int ) ;
 scalar_t__ tcp_ca_find_key (scalar_t__) ;
 int tcp_cong_list ;
 int tcp_cong_list_lock ;

int tcp_register_congestion_control(struct tcp_congestion_ops *ca)
{
 int ret = 0;


 if (!ca->ssthresh || !ca->undo_cwnd ||
     !(ca->cong_avoid || ca->cong_control)) {
  pr_err("%s does not implement required ops\n", ca->name);
  return -EINVAL;
 }

 ca->key = jhash(ca->name, sizeof(ca->name), strlen(ca->name));

 spin_lock(&tcp_cong_list_lock);
 if (ca->key == TCP_CA_UNSPEC || tcp_ca_find_key(ca->key)) {
  pr_notice("%s already registered or non-unique key\n",
     ca->name);
  ret = -EEXIST;
 } else {
  list_add_tail_rcu(&ca->list, &tcp_cong_list);
  pr_debug("%s registered\n", ca->name);
 }
 spin_unlock(&tcp_cong_list_lock);

 return ret;
}
