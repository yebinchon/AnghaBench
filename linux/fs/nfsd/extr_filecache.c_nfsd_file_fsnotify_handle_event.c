
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qstr {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_mode; } ;
struct fsnotify_iter_info {int dummy; } ;
struct fsnotify_group {int dummy; } ;


 int FS_ATTRIB ;
 int S_ISREG (int ) ;
 int WARN_ON_ONCE (int) ;
 int nfsd_file_close_inode (struct inode*) ;
 int trace_nfsd_file_fsnotify_handle_event (struct inode*,int) ;

__attribute__((used)) static int
nfsd_file_fsnotify_handle_event(struct fsnotify_group *group,
    struct inode *inode,
    u32 mask, const void *data, int data_type,
    const struct qstr *file_name, u32 cookie,
    struct fsnotify_iter_info *iter_info)
{
 trace_nfsd_file_fsnotify_handle_event(inode, mask);


 if (!S_ISREG(inode->i_mode)) {
  WARN_ON_ONCE(1);
  return 0;
 }


 if (mask & FS_ATTRIB) {
  if (inode->i_nlink)
   return 0;
 }

 nfsd_file_close_inode(inode);
 return 0;
}
