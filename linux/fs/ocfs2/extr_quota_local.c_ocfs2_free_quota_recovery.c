
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_quota_recovery {int * r_list; } ;


 int OCFS2_MAXQUOTAS ;
 int free_recovery_list (int *) ;
 int kfree (struct ocfs2_quota_recovery*) ;

void ocfs2_free_quota_recovery(struct ocfs2_quota_recovery *rec)
{
 int type;

 for (type = 0; type < OCFS2_MAXQUOTAS; type++)
  free_recovery_list(&(rec->r_list[type]));
 kfree(rec);
}
