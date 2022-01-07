
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct inode {int i_opflags; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct smack_known* ERR_PTR (int) ;
 int GFP_NOFS ;
 int IOP_XATTR ;
 int SMK_LONGLABEL ;
 int __vfs_getxattr (struct dentry*,struct inode*,char const*,char*,int ) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 struct smack_known* smk_import_entry (char*,int) ;

__attribute__((used)) static struct smack_known *smk_fetch(const char *name, struct inode *ip,
     struct dentry *dp)
{
 int rc;
 char *buffer;
 struct smack_known *skp = ((void*)0);

 if (!(ip->i_opflags & IOP_XATTR))
  return ERR_PTR(-EOPNOTSUPP);

 buffer = kzalloc(SMK_LONGLABEL, GFP_NOFS);
 if (buffer == ((void*)0))
  return ERR_PTR(-ENOMEM);

 rc = __vfs_getxattr(dp, ip, name, buffer, SMK_LONGLABEL);
 if (rc < 0)
  skp = ERR_PTR(rc);
 else if (rc == 0)
  skp = ((void*)0);
 else
  skp = smk_import_entry(buffer, rc);

 kfree(buffer);

 return skp;
}
