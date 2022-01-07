
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ s64 ;


 int ENOSPC ;
 int dbAlloc (struct inode*,scalar_t__,scalar_t__,scalar_t__*) ;
 int dbExtend (struct inode*,scalar_t__,scalar_t__,scalar_t__) ;

int
dbReAlloc(struct inode *ip,
   s64 blkno, s64 nblocks, s64 addnblocks, s64 * results)
{
 int rc;



 if ((rc = dbExtend(ip, blkno, nblocks, addnblocks)) == 0) {
  *results = blkno;
  return (0);
 } else {
  if (rc != -ENOSPC)
   return (rc);
 }






 return (dbAlloc
  (ip, blkno + nblocks - 1, addnblocks + nblocks, results));
}
