
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_context {int dummy; } ;


 int kfree (struct ocfs2_alloc_context*) ;
 int ocfs2_free_ac_resource (struct ocfs2_alloc_context*) ;

void ocfs2_free_alloc_context(struct ocfs2_alloc_context *ac)
{
 ocfs2_free_ac_resource(ac);
 kfree(ac);
}
