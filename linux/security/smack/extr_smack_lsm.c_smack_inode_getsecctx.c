
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smack_known {void* smk_known; } ;
struct inode {int dummy; } ;


 struct smack_known* smk_of_inode (struct inode*) ;
 int strlen (void*) ;

__attribute__((used)) static int smack_inode_getsecctx(struct inode *inode, void **ctx, u32 *ctxlen)
{
 struct smack_known *skp = smk_of_inode(inode);

 *ctx = skp->smk_known;
 *ctxlen = strlen(skp->smk_known);
 return 0;
}
