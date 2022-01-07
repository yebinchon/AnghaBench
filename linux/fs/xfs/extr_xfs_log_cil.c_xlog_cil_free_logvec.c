
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_vec {struct xfs_log_vec* lv_next; } ;


 int kmem_free (struct xfs_log_vec*) ;

__attribute__((used)) static void
xlog_cil_free_logvec(
 struct xfs_log_vec *log_vector)
{
 struct xfs_log_vec *lv;

 for (lv = log_vector; lv; ) {
  struct xfs_log_vec *next = lv->lv_next;
  kmem_free(lv);
  lv = next;
 }
}
