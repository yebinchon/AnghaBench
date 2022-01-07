
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flag; } ;
typedef TYPE_1__ xad_t ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef int s64 ;
struct TYPE_8__ {int nbperpage; int l2bsize; } ;


 int EIO ;
 TYPE_6__* JFS_SBI (struct super_block*) ;
 int POFFSET ;
 int XAD_NOTRECORDED ;
 int XADaddress (TYPE_1__*,int) ;
 int XADlength (TYPE_1__*,int) ;
 int XADoffset (TYPE_1__*,int) ;
 int jfs_error (struct super_block*,char*) ;
 int xtLookup (struct inode*,int,int,int*,int*,int*,int ) ;

int extHint(struct inode *ip, s64 offset, xad_t * xp)
{
 struct super_block *sb = ip->i_sb;
 int nbperpage = JFS_SBI(sb)->nbperpage;
 s64 prev;
 int rc = 0;
 s64 xaddr;
 int xlen;
 int xflag;


 XADaddress(xp, 0);




 prev = ((offset & ~POFFSET) >> JFS_SBI(sb)->l2bsize) - nbperpage;



 if (prev < 0)
  goto out;

 rc = xtLookup(ip, prev, nbperpage, &xflag, &xaddr, &xlen, 0);

 if ((rc == 0) && xlen) {
  if (xlen != nbperpage) {
   jfs_error(ip->i_sb, "corrupt xtree\n");
   rc = -EIO;
  }
  XADaddress(xp, xaddr);
  XADlength(xp, xlen);
  XADoffset(xp, prev);




  xp->flag = xflag & XAD_NOTRECORDED;
 } else
  rc = 0;

out:
 return (rc);
}
