
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flag; } ;
typedef TYPE_1__ xad_t ;
struct jfs_sb_info {int l2nbperpage; } ;
struct inode {int i_sb; } ;
typedef int s64 ;
struct TYPE_11__ {int commit_mutex; } ;


 int COMMIT_Synclist ;
 int INOHINT (struct inode*) ;
 TYPE_9__* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int MAXXLEN ;
 int XAD_NOTRECORDED ;
 int XADaddress (TYPE_1__*,int) ;
 int XADlength (TYPE_1__*,int) ;
 int XADoffset (TYPE_1__*,int) ;
 int addressXAD (TYPE_1__*) ;
 int dbFree (struct inode*,int,int) ;
 int dquot_alloc_block (struct inode*,int) ;
 int dquot_free_block (struct inode*,int) ;
 int extBalloc (struct inode*,int,int*,int*) ;
 int jfs_commit_inode (struct inode*,int ) ;
 int lengthXAD (TYPE_1__*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int offsetXAD (TYPE_1__*) ;
 scalar_t__ test_and_clear_cflag (int ,struct inode*) ;
 int txBeginAnon (int ) ;
 int xtExtend (int ,struct inode*,int,int,int ) ;
 int xtInsert (int ,struct inode*,int,int,int,int*,int ) ;

int
extAlloc(struct inode *ip, s64 xlen, s64 pno, xad_t * xp, bool abnr)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 s64 nxlen, nxaddr, xoff, hint, xaddr = 0;
 int rc;
 int xflag;


 txBeginAnon(ip->i_sb);


 mutex_lock(&JFS_IP(ip)->commit_mutex);


 if (xlen > MAXXLEN)
  xlen = MAXXLEN;


 xoff = pno << sbi->l2nbperpage;


 if ((hint = addressXAD(xp))) {

  nxlen = lengthXAD(xp);
  if (offsetXAD(xp) + nxlen == xoff &&
      abnr == ((xp->flag & XAD_NOTRECORDED) ? 1 : 0))
   xaddr = hint + nxlen;


  hint += (nxlen - 1);
 }
 nxlen = xlen;
 if ((rc = extBalloc(ip, hint ? hint : INOHINT(ip), &nxlen, &nxaddr))) {
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
  return (rc);
 }


 rc = dquot_alloc_block(ip, nxlen);
 if (rc) {
  dbFree(ip, nxaddr, (s64) nxlen);
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
  return rc;
 }


 xflag = abnr ? XAD_NOTRECORDED : 0;





 if (xaddr && xaddr == nxaddr)
  rc = xtExtend(0, ip, xoff, (int) nxlen, 0);
 else
  rc = xtInsert(0, ip, xflag, xoff, (int) nxlen, &nxaddr, 0);




 if (rc) {
  dbFree(ip, nxaddr, nxlen);
  dquot_free_block(ip, nxlen);
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
  return (rc);
 }


 XADaddress(xp, nxaddr);
 XADlength(xp, nxlen);
 XADoffset(xp, xoff);
 xp->flag = xflag;

 mark_inode_dirty(ip);

 mutex_unlock(&JFS_IP(ip)->commit_mutex);





 if (test_and_clear_cflag(COMMIT_Synclist,ip))
  jfs_commit_inode(ip, 0);

 return (0);
}
