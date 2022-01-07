
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_tstamp; scalar_t__ rdma_cookie; } ;
struct in6_addr {int dummy; } ;
struct rds_incoming {TYPE_1__ i_usercopy; struct in6_addr i_saddr; struct rds_conn_path* i_conn_path; int i_conn; int i_item; int i_refcount; } ;
struct rds_conn_path {int cp_conn; } ;


 int INIT_LIST_HEAD (int *) ;
 int ktime_set (int ,int ) ;
 int refcount_set (int *,int) ;

void rds_inc_path_init(struct rds_incoming *inc, struct rds_conn_path *cp,
         struct in6_addr *saddr)
{
 refcount_set(&inc->i_refcount, 1);
 INIT_LIST_HEAD(&inc->i_item);
 inc->i_conn = cp->cp_conn;
 inc->i_conn_path = cp;
 inc->i_saddr = *saddr;
 inc->i_usercopy.rdma_cookie = 0;
 inc->i_usercopy.rx_tstamp = ktime_set(0, 0);
}
