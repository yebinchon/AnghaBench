
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int i_nlink; } ;


 int OVL_XATTR_NLINK ;
 TYPE_1__* d_inode (struct dentry*) ;
 int kstrtoint (char*,int,int*) ;
 int pr_warn_ratelimited (char*,struct dentry*,int) ;
 int vfs_getxattr (struct dentry*,int ,char**,int) ;

unsigned int ovl_get_nlink(struct dentry *lowerdentry,
      struct dentry *upperdentry,
      unsigned int fallback)
{
 int nlink_diff;
 int nlink;
 char buf[13];
 int err;

 if (!lowerdentry || !upperdentry || d_inode(lowerdentry)->i_nlink == 1)
  return fallback;

 err = vfs_getxattr(upperdentry, OVL_XATTR_NLINK, &buf, sizeof(buf) - 1);
 if (err < 0)
  goto fail;

 buf[err] = '\0';
 if ((buf[0] != 'L' && buf[0] != 'U') ||
     (buf[1] != '+' && buf[1] != '-'))
  goto fail;

 err = kstrtoint(buf + 1, 10, &nlink_diff);
 if (err < 0)
  goto fail;

 nlink = d_inode(buf[0] == 'L' ? lowerdentry : upperdentry)->i_nlink;
 nlink += nlink_diff;

 if (nlink <= 0)
  goto fail;

 return nlink;

fail:
 pr_warn_ratelimited("overlayfs: failed to get index nlink (%pd2, err=%i)\n",
       upperdentry, err);
 return fallback;
}
