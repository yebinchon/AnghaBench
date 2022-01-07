
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;




 int EINVAL ;
 int ENODATA ;
 int ENOMEM ;
 int ENOSYS ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GOSSIP_ACL_DEBUG ;
 int ORANGEFS_MAX_XATTR_VALUELEN ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int get_khandle_from_ino (struct inode*) ;
 int gossip_debug (int ,char*,int ,char*,int) ;
 int gossip_err (char*,int,...) ;
 int init_user_ns ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int orangefs_inode_getxattr (struct inode*,char*,char*,int ) ;
 struct posix_acl* posix_acl_from_xattr (int *,char*,int) ;

struct posix_acl *orangefs_get_acl(struct inode *inode, int type)
{
 struct posix_acl *acl;
 int ret;
 char *key = ((void*)0), *value = ((void*)0);

 switch (type) {
 case 129:
  key = XATTR_NAME_POSIX_ACL_ACCESS;
  break;
 case 128:
  key = XATTR_NAME_POSIX_ACL_DEFAULT;
  break;
 default:
  gossip_err("orangefs_get_acl: bogus value of type %d\n", type);
  return ERR_PTR(-EINVAL);
 }







 value = kmalloc(ORANGEFS_MAX_XATTR_VALUELEN, GFP_KERNEL);
 if (!value)
  return ERR_PTR(-ENOMEM);

 gossip_debug(GOSSIP_ACL_DEBUG,
       "inode %pU, key %s, type %d\n",
       get_khandle_from_ino(inode),
       key,
       type);
 ret = orangefs_inode_getxattr(inode, key, value,
          ORANGEFS_MAX_XATTR_VALUELEN);

 if (ret > 0) {
  acl = posix_acl_from_xattr(&init_user_ns, value, ret);
 } else if (ret == -ENODATA || ret == -ENOSYS) {
  acl = ((void*)0);
 } else {
  gossip_err("inode %pU retrieving acl's failed with error %d\n",
      get_khandle_from_ino(inode),
      ret);
  acl = ERR_PTR(ret);
 }

 kfree(value);
 return acl;
}
