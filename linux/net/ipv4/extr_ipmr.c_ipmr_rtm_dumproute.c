
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int sk; } ;
struct netlink_callback {int extack; int nlh; scalar_t__ strict_check; } ;
struct mr_table {int dummy; } ;
struct fib_dump_filter {scalar_t__ dump_all_families; scalar_t__ table_id; } ;


 int ENOENT ;
 int NL_SET_ERR_MSG (int ,char*) ;
 int _ipmr_fill_mroute ;
 int ip_valid_fib_dump_req (int ,int ,struct fib_dump_filter*,struct netlink_callback*) ;
 struct mr_table* ipmr_get_table (int ,scalar_t__) ;
 int ipmr_mr_table_iter ;
 int mfc_unres_lock ;
 int mr_rtm_dumproute (struct sk_buff*,struct netlink_callback*,int ,int ,int *,struct fib_dump_filter*) ;
 int mr_table_dump (struct mr_table*,struct sk_buff*,struct netlink_callback*,int ,int *,struct fib_dump_filter*) ;
 int sock_net (int ) ;

__attribute__((used)) static int ipmr_rtm_dumproute(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct fib_dump_filter filter = {};
 int err;

 if (cb->strict_check) {
  err = ip_valid_fib_dump_req(sock_net(skb->sk), cb->nlh,
         &filter, cb);
  if (err < 0)
   return err;
 }

 if (filter.table_id) {
  struct mr_table *mrt;

  mrt = ipmr_get_table(sock_net(skb->sk), filter.table_id);
  if (!mrt) {
   if (filter.dump_all_families)
    return skb->len;

   NL_SET_ERR_MSG(cb->extack, "ipv4: MR table does not exist");
   return -ENOENT;
  }
  err = mr_table_dump(mrt, skb, cb, _ipmr_fill_mroute,
        &mfc_unres_lock, &filter);
  return skb->len ? : err;
 }

 return mr_rtm_dumproute(skb, cb, ipmr_mr_table_iter,
    _ipmr_fill_mroute, &mfc_unres_lock, &filter);
}
