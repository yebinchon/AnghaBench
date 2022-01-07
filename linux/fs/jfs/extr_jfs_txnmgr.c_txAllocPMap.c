
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flag; } ;
typedef TYPE_1__ xad_t ;
typedef int ulong ;
struct xdlistlock {int count; TYPE_1__* xdlist; } ;
struct tblock {int dummy; } ;
struct pxd_lock {TYPE_1__ pxd; } ;
struct maplock {int flag; } ;
struct inode {int i_sb; } ;
typedef scalar_t__ s64 ;
typedef TYPE_1__ pxd_t ;
struct TYPE_9__ {struct inode* ipbmap; } ;


 TYPE_7__* JFS_SBI (int ) ;
 int XAD_EXTENDED ;
 int XAD_NEW ;
 scalar_t__ addressPXD (TYPE_1__*) ;
 scalar_t__ addressXAD (TYPE_1__*) ;
 int dbUpdatePMap (struct inode*,int,scalar_t__,scalar_t__,struct tblock*) ;
 int jfs_info (char*,int ,int) ;
 int lengthPXD (TYPE_1__*) ;
 int lengthXAD (TYPE_1__*) ;
 int mlckALLOCPXD ;
 int mlckALLOCXADLIST ;

__attribute__((used)) static void txAllocPMap(struct inode *ip, struct maplock * maplock,
   struct tblock * tblk)
{
 struct inode *ipbmap = JFS_SBI(ip->i_sb)->ipbmap;
 struct xdlistlock *xadlistlock;
 xad_t *xad;
 s64 xaddr;
 int xlen;
 struct pxd_lock *pxdlock;
 struct xdlistlock *pxdlistlock;
 pxd_t *pxd;
 int n;




 if (maplock->flag & mlckALLOCXADLIST) {
  xadlistlock = (struct xdlistlock *) maplock;
  xad = xadlistlock->xdlist;
  for (n = 0; n < xadlistlock->count; n++, xad++) {
   if (xad->flag & (XAD_NEW | XAD_EXTENDED)) {
    xaddr = addressXAD(xad);
    xlen = lengthXAD(xad);
    dbUpdatePMap(ipbmap, 0, xaddr,
          (s64) xlen, tblk);
    xad->flag &= ~(XAD_NEW | XAD_EXTENDED);
    jfs_info("allocPMap: xaddr:0x%lx xlen:%d",
      (ulong) xaddr, xlen);
   }
  }
 } else if (maplock->flag & mlckALLOCPXD) {
  pxdlock = (struct pxd_lock *) maplock;
  xaddr = addressPXD(&pxdlock->pxd);
  xlen = lengthPXD(&pxdlock->pxd);
  dbUpdatePMap(ipbmap, 0, xaddr, (s64) xlen, tblk);
  jfs_info("allocPMap: xaddr:0x%lx xlen:%d", (ulong) xaddr, xlen);
 } else {

  pxdlistlock = (struct xdlistlock *) maplock;
  pxd = pxdlistlock->xdlist;
  for (n = 0; n < pxdlistlock->count; n++, pxd++) {
   xaddr = addressPXD(pxd);
   xlen = lengthPXD(pxd);
   dbUpdatePMap(ipbmap, 0, xaddr, (s64) xlen,
         tblk);
   jfs_info("allocPMap: xaddr:0x%lx xlen:%d",
     (ulong) xaddr, xlen);
  }
 }
}
