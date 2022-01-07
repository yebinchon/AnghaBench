
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rds_message {unsigned int m_total_sgs; int m_flush_wait; int m_rs_lock; int m_conn_item; int m_sock_item; int m_refcount; scalar_t__ m_used_sgs; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int KMALLOC_MAX_SIZE ;
 int init_waitqueue_head (int *) ;
 struct rds_message* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

struct rds_message *rds_message_alloc(unsigned int extra_len, gfp_t gfp)
{
 struct rds_message *rm;

 if (extra_len > KMALLOC_MAX_SIZE - sizeof(struct rds_message))
  return ((void*)0);

 rm = kzalloc(sizeof(struct rds_message) + extra_len, gfp);
 if (!rm)
  goto out;

 rm->m_used_sgs = 0;
 rm->m_total_sgs = extra_len / sizeof(struct scatterlist);

 refcount_set(&rm->m_refcount, 1);
 INIT_LIST_HEAD(&rm->m_sock_item);
 INIT_LIST_HEAD(&rm->m_conn_item);
 spin_lock_init(&rm->m_rs_lock);
 init_waitqueue_head(&rm->m_flush_wait);

out:
 return rm;
}
