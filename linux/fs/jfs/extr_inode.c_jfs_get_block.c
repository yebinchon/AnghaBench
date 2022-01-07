
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xad_t ;
struct inode {int i_blkbits; int i_size; TYPE_1__* i_sb; } ;
struct buffer_head {int b_size; } ;
typedef int sector_t ;
typedef int s64 ;
typedef int s32 ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 int BUG () ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 int IWRITE_LOCK (struct inode*,int ) ;
 int IWRITE_UNLOCK (struct inode*) ;
 int RDWRLOCK_NORMAL ;
 int XAD_NOTRECORDED ;
 int XADaddress (int *,int) ;
 int XADlength (int *,int) ;
 int XADoffset (int *,int) ;
 int addressXAD (int *) ;
 int extAlloc (struct inode*,int,int,int *,int) ;
 int extHint (struct inode*,int,int *) ;
 int extRecord (struct inode*,int *) ;
 int lengthXAD (int *) ;
 int map_bh (struct buffer_head*,TYPE_1__*,int) ;
 int set_buffer_new (struct buffer_head*) ;
 int xtLookup (struct inode*,int,int,int*,int*,int*,int ) ;

int jfs_get_block(struct inode *ip, sector_t lblock,
    struct buffer_head *bh_result, int create)
{
 s64 lblock64 = lblock;
 int rc = 0;
 xad_t xad;
 s64 xaddr;
 int xflag;
 s32 xlen = bh_result->b_size >> ip->i_blkbits;




 if (create)
  IWRITE_LOCK(ip, RDWRLOCK_NORMAL);
 else
  IREAD_LOCK(ip, RDWRLOCK_NORMAL);

 if (((lblock64 << ip->i_sb->s_blocksize_bits) < ip->i_size) &&
     (!xtLookup(ip, lblock64, xlen, &xflag, &xaddr, &xlen, 0)) &&
     xaddr) {
  if (xflag & XAD_NOTRECORDED) {
   if (!create)




    goto unlock;
   BUG();

   rc = extRecord(ip, &xad);
   if (rc)
    goto unlock;
   set_buffer_new(bh_result);
  }

  map_bh(bh_result, ip->i_sb, xaddr);
  bh_result->b_size = xlen << ip->i_blkbits;
  goto unlock;
 }
 if (!create)
  goto unlock;
 BUG();


      unlock:



 if (create)
  IWRITE_UNLOCK(ip);
 else
  IREAD_UNLOCK(ip);
 return rc;
}
