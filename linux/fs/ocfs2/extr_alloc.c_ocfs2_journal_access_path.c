
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
typedef int handle_t ;


 int mlog_errno (int) ;
 int ocfs2_path_bh_journal_access (int *,struct ocfs2_caching_info*,struct ocfs2_path*,int) ;
 int path_num_items (struct ocfs2_path*) ;

int ocfs2_journal_access_path(struct ocfs2_caching_info *ci,
         handle_t *handle,
         struct ocfs2_path *path)
{
 int i, ret = 0;

 if (!path)
  goto out;

 for(i = 0; i < path_num_items(path); i++) {
  ret = ocfs2_path_bh_journal_access(handle, ci, path, i);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }

out:
 return ret;
}
