
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_quota_recovery {int * r_list; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int OCFS2_MAXQUOTAS ;
 struct ocfs2_quota_recovery* kmalloc (int,int ) ;

__attribute__((used)) static struct ocfs2_quota_recovery *ocfs2_alloc_quota_recovery(void)
{
 int type;
 struct ocfs2_quota_recovery *rec;

 rec = kmalloc(sizeof(struct ocfs2_quota_recovery), GFP_NOFS);
 if (!rec)
  return ((void*)0);
 for (type = 0; type < OCFS2_MAXQUOTAS; type++)
  INIT_LIST_HEAD(&(rec->r_list[type]));
 return rec;
}
