
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct inode {int dummy; } ;


 int ALL_FSNOTIFY_DIRENT_EVENTS ;
 int FSNOTIFY_EVENT_INODE ;
 int FSNOTIFY_EVENT_PATH ;
 struct inode* d_inode (int ) ;

__attribute__((used)) static struct inode *fanotify_fid_inode(struct inode *to_tell, u32 event_mask,
     const void *data, int data_type)
{
 if (event_mask & ALL_FSNOTIFY_DIRENT_EVENTS)
  return to_tell;
 else if (data_type == FSNOTIFY_EVENT_INODE)
  return (struct inode *)data;
 else if (data_type == FSNOTIFY_EVENT_PATH)
  return d_inode(((struct path *)data)->dentry);
 return ((void*)0);
}
