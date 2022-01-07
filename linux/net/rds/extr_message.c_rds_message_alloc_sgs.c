
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rds_message {int m_used_sgs; int m_total_sgs; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 int pr_warn (char*,...) ;
 int sg_init_table (struct scatterlist*,int) ;

struct scatterlist *rds_message_alloc_sgs(struct rds_message *rm, int nents,
       int *ret)
{
 struct scatterlist *sg_first = (struct scatterlist *) &rm[1];
 struct scatterlist *sg_ret;

 if (WARN_ON(!ret))
  return ((void*)0);

 if (nents <= 0) {
  pr_warn("rds: alloc sgs failed! nents <= 0\n");
  *ret = -EINVAL;
  return ((void*)0);
 }

 if (rm->m_used_sgs + nents > rm->m_total_sgs) {
  pr_warn("rds: alloc sgs failed! total %d used %d nents %d\n",
   rm->m_total_sgs, rm->m_used_sgs, nents);
  *ret = -ENOMEM;
  return ((void*)0);
 }

 sg_ret = &sg_first[rm->m_used_sgs];
 sg_init_table(sg_ret, nents);
 rm->m_used_sgs += nents;

 return sg_ret;
}
