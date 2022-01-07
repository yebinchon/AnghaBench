
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct vfs_ns_cap_data {int data; void* magic_etc; void* rootid; } ;
struct vfs_cap_data {int data; int magic_etc; } ;
struct user_namespace {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
typedef int kuid_t ;
typedef int __u32 ;
typedef int __le32 ;
struct TYPE_2__ {struct user_namespace* s_user_ns; } ;


 int CAP_SETFCAP ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int VFS_CAP_FLAGS_EFFECTIVE ;
 int VFS_CAP_REVISION_3 ;
 int VFS_CAP_U32 ;
 size_t XATTR_CAPS_SZ_2 ;
 int capable_wrt_inode_uidgid (struct inode*,int ) ;
 void* cpu_to_le32 (int) ;
 struct user_namespace* current_user_ns () ;
 struct inode* d_backing_inode (struct dentry*) ;
 int from_kuid (struct user_namespace*,int ) ;
 struct vfs_ns_cap_data* kmalloc (size_t,int ) ;
 int kvfree (void*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ ns_capable (struct user_namespace*,int ) ;
 int rootid_from_xattr (void*,size_t,struct user_namespace*) ;
 int uid_valid (int ) ;
 int validheader (size_t,struct vfs_cap_data const*) ;

int cap_convert_nscap(struct dentry *dentry, void **ivalue, size_t size)
{
 struct vfs_ns_cap_data *nscap;
 uid_t nsrootid;
 const struct vfs_cap_data *cap = *ivalue;
 __u32 magic, nsmagic;
 struct inode *inode = d_backing_inode(dentry);
 struct user_namespace *task_ns = current_user_ns(),
  *fs_ns = inode->i_sb->s_user_ns;
 kuid_t rootid;
 size_t newsize;

 if (!*ivalue)
  return -EINVAL;
 if (!validheader(size, cap))
  return -EINVAL;
 if (!capable_wrt_inode_uidgid(inode, CAP_SETFCAP))
  return -EPERM;
 if (size == XATTR_CAPS_SZ_2)
  if (ns_capable(inode->i_sb->s_user_ns, CAP_SETFCAP))

   return size;

 rootid = rootid_from_xattr(*ivalue, size, task_ns);
 if (!uid_valid(rootid))
  return -EINVAL;

 nsrootid = from_kuid(fs_ns, rootid);
 if (nsrootid == -1)
  return -EINVAL;

 newsize = sizeof(struct vfs_ns_cap_data);
 nscap = kmalloc(newsize, GFP_ATOMIC);
 if (!nscap)
  return -ENOMEM;
 nscap->rootid = cpu_to_le32(nsrootid);
 nsmagic = VFS_CAP_REVISION_3;
 magic = le32_to_cpu(cap->magic_etc);
 if (magic & VFS_CAP_FLAGS_EFFECTIVE)
  nsmagic |= VFS_CAP_FLAGS_EFFECTIVE;
 nscap->magic_etc = cpu_to_le32(nsmagic);
 memcpy(&nscap->data, &cap->data, sizeof(__le32) * 2 * VFS_CAP_U32);

 kvfree(*ivalue);
 *ivalue = nscap;
 return newsize;
}
