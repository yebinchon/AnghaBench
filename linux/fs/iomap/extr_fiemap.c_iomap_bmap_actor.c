
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {scalar_t__ type; int offset; int addr; } ;
struct inode {int i_blkbits; } ;
typedef int sector_t ;
typedef int loff_t ;


 int INT_MAX ;
 scalar_t__ IOMAP_MAPPED ;
 int WARN (int,char*) ;

__attribute__((used)) static loff_t
iomap_bmap_actor(struct inode *inode, loff_t pos, loff_t length,
  void *data, struct iomap *iomap)
{
 sector_t *bno = data, addr;

 if (iomap->type == IOMAP_MAPPED) {
  addr = (pos - iomap->offset + iomap->addr) >> inode->i_blkbits;
  if (addr > INT_MAX)
   WARN(1, "would truncate bmap result\n");
  else
   *bno = addr;
 }
 return 0;
}
