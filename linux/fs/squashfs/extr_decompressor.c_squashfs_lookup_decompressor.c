
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_decompressor {int id; } ;


 struct squashfs_decompressor const** decompressor ;

const struct squashfs_decompressor *squashfs_lookup_decompressor(int id)
{
 int i;

 for (i = 0; decompressor[i]->id; i++)
  if (id == decompressor[i]->id)
   break;

 return decompressor[i];
}
