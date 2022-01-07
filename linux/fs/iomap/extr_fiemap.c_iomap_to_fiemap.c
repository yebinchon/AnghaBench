
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iomap {int type; int flags; scalar_t__ addr; int length; int offset; } ;
struct fiemap_extent_info {int dummy; } ;


 int FIEMAP_EXTENT_DATA_INLINE ;
 int FIEMAP_EXTENT_DELALLOC ;
 int FIEMAP_EXTENT_MERGED ;
 int FIEMAP_EXTENT_SHARED ;
 int FIEMAP_EXTENT_UNKNOWN ;
 int FIEMAP_EXTENT_UNWRITTEN ;

 int IOMAP_F_MERGED ;
 int IOMAP_F_SHARED ;



 scalar_t__ IOMAP_NULL_ADDR ;

 int fiemap_fill_next_extent (struct fiemap_extent_info*,int ,scalar_t__,int ,int) ;

__attribute__((used)) static int iomap_to_fiemap(struct fiemap_extent_info *fi,
  struct iomap *iomap, u32 flags)
{
 switch (iomap->type) {
 case 131:

  return 0;
 case 132:
  flags |= FIEMAP_EXTENT_DELALLOC | FIEMAP_EXTENT_UNKNOWN;
  break;
 case 129:
  break;
 case 128:
  flags |= FIEMAP_EXTENT_UNWRITTEN;
  break;
 case 130:
  flags |= FIEMAP_EXTENT_DATA_INLINE;
  break;
 }

 if (iomap->flags & IOMAP_F_MERGED)
  flags |= FIEMAP_EXTENT_MERGED;
 if (iomap->flags & IOMAP_F_SHARED)
  flags |= FIEMAP_EXTENT_SHARED;

 return fiemap_fill_next_extent(fi, iomap->offset,
   iomap->addr != IOMAP_NULL_ADDR ? iomap->addr : 0,
   iomap->length, flags);
}
