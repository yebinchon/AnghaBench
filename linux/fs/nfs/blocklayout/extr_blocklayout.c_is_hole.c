
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_extent {int be_state; int be_tag; } ;





__attribute__((used)) static bool is_hole(struct pnfs_block_extent *be)
{
 switch (be->be_state) {
 case 128:
  return 1;
 case 129:
  return be->be_tag ? 0 : 1;
 default:
  return 0;
 }
}
