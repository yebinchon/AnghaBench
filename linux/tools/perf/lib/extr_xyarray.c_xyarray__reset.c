
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xyarray {size_t entries; size_t entry_size; int contents; } ;


 int memset (int ,int ,size_t) ;

void xyarray__reset(struct xyarray *xy)
{
 size_t n = xy->entries * xy->entry_size;

 memset(xy->contents, 0, n);
}
