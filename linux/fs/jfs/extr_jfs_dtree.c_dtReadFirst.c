
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct metapage {int dummy; } ;
struct inode {int i_sb; } ;
struct btstack {struct btframe* top; } ;
struct btframe {struct metapage* mp; scalar_t__ index; scalar_t__ bn; } ;
typedef size_t s8 ;
typedef scalar_t__ s64 ;
typedef int pxd_t ;
struct TYPE_6__ {int flag; } ;
struct TYPE_7__ {int * slot; TYPE_1__ header; } ;
typedef TYPE_2__ dtpage_t ;
struct TYPE_8__ {int l2bsize; } ;


 int BT_CLR (struct btstack*) ;
 int BT_LEAF ;
 int BT_PUSH (struct btstack*,scalar_t__,int ) ;
 int BT_STACK_DUMP (struct btstack*) ;
 scalar_t__ BT_STACK_FULL (struct btstack*) ;
 int DT_GETPAGE (struct inode*,scalar_t__,struct metapage*,int,TYPE_2__*,int) ;
 size_t* DT_GETSTBL (TYPE_2__*) ;
 int DT_PUTPAGE (struct metapage*) ;
 int EIO ;
 TYPE_3__* JFS_SBI (int ) ;
 scalar_t__ addressPXD (int *) ;
 int jfs_error (int ,char*) ;
 int lengthPXD (int *) ;

__attribute__((used)) static int dtReadFirst(struct inode *ip, struct btstack * btstack)
{
 int rc = 0;
 s64 bn;
 int psize = 288;
 struct metapage *mp;
 dtpage_t *p;
 s8 *stbl;
 struct btframe *btsp;
 pxd_t *xd;

 BT_CLR(btstack);






 for (bn = 0;;) {
  DT_GETPAGE(ip, bn, mp, psize, p, rc);
  if (rc)
   return rc;




  if (p->header.flag & BT_LEAF) {

   btsp = btstack->top;
   btsp->bn = bn;
   btsp->index = 0;
   btsp->mp = mp;

   return 0;
  }




  if (BT_STACK_FULL(btstack)) {
   DT_PUTPAGE(mp);
   jfs_error(ip->i_sb, "btstack overrun\n");
   BT_STACK_DUMP(btstack);
   return -EIO;
  }

  BT_PUSH(btstack, bn, 0);


  stbl = DT_GETSTBL(p);
  xd = (pxd_t *) & p->slot[stbl[0]];


  bn = addressPXD(xd);
  psize = lengthPXD(xd) << JFS_SBI(ip->i_sb)->l2bsize;


  DT_PUTPAGE(mp);
 }
}
