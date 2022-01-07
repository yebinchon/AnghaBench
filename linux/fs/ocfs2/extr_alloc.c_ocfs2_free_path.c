
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;


 int kfree (struct ocfs2_path*) ;
 int ocfs2_reinit_path (struct ocfs2_path*,int ) ;

void ocfs2_free_path(struct ocfs2_path *path)
{
 if (path) {
  ocfs2_reinit_path(path, 0);
  kfree(path);
 }
}
