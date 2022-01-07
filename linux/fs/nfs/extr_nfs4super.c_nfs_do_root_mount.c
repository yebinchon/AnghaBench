
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int ENOMEM ;
 struct vfsmount* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int snprintf (char*,size_t,char*,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;
 struct vfsmount* vfs_kern_mount (struct file_system_type*,int,char*,void*) ;

__attribute__((used)) static struct vfsmount *nfs_do_root_mount(struct file_system_type *fs_type,
  int flags, void *data, const char *hostname)
{
 struct vfsmount *root_mnt;
 char *root_devname;
 size_t len;

 len = strlen(hostname) + 5;
 root_devname = kmalloc(len, GFP_KERNEL);
 if (root_devname == ((void*)0))
  return ERR_PTR(-ENOMEM);

 if (strchr(hostname, ':'))
  snprintf(root_devname, len, "[%s]:/", hostname);
 else
  snprintf(root_devname, len, "%s:/", hostname);
 root_mnt = vfs_kern_mount(fs_type, flags, root_devname, data);
 kfree(root_devname);
 return root_mnt;
}
