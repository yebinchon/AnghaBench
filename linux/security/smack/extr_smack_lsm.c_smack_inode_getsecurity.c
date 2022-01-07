
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_magic; } ;
struct socket_smack {struct smack_known* smk_out; struct smack_known* smk_in; } ;
struct socket {TYPE_1__* sk; } ;
struct smack_known {int smk_known; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {struct socket_smack* sk_security; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 struct socket* SOCKET_I (struct inode*) ;
 scalar_t__ SOCKFS_MAGIC ;
 int XATTR_SMACK_IPIN ;
 int XATTR_SMACK_IPOUT ;
 int XATTR_SMACK_SUFFIX ;
 void* kstrdup (int ,int ) ;
 struct smack_known* smk_of_inode (struct inode*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int smack_inode_getsecurity(struct inode *inode,
       const char *name, void **buffer,
       bool alloc)
{
 struct socket_smack *ssp;
 struct socket *sock;
 struct super_block *sbp;
 struct inode *ip = (struct inode *)inode;
 struct smack_known *isp;

 if (strcmp(name, XATTR_SMACK_SUFFIX) == 0)
  isp = smk_of_inode(inode);
 else {



  sbp = ip->i_sb;
  if (sbp->s_magic != SOCKFS_MAGIC)
   return -EOPNOTSUPP;

  sock = SOCKET_I(ip);
  if (sock == ((void*)0) || sock->sk == ((void*)0))
   return -EOPNOTSUPP;

  ssp = sock->sk->sk_security;

  if (strcmp(name, XATTR_SMACK_IPIN) == 0)
   isp = ssp->smk_in;
  else if (strcmp(name, XATTR_SMACK_IPOUT) == 0)
   isp = ssp->smk_out;
  else
   return -EOPNOTSUPP;
 }

 if (alloc) {
  *buffer = kstrdup(isp->smk_known, GFP_KERNEL);
  if (*buffer == ((void*)0))
   return -ENOMEM;
 }

 return strlen(isp->smk_known);
}
