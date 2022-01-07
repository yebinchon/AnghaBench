
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_extent {scalar_t__ be_state; scalar_t__ be_device; scalar_t__ be_f_offset; scalar_t__ be_length; scalar_t__ be_v_offset; scalar_t__ be_tag; } ;


 scalar_t__ PNFS_BLOCK_INVALID_DATA ;
 scalar_t__ PNFS_BLOCK_NONE_DATA ;

__attribute__((used)) static bool
ext_can_merge(struct pnfs_block_extent *be1, struct pnfs_block_extent *be2)
{
 if (be1->be_state != be2->be_state)
  return 0;
 if (be1->be_device != be2->be_device)
  return 0;

 if (be1->be_f_offset + be1->be_length != be2->be_f_offset)
  return 0;

 if (be1->be_state != PNFS_BLOCK_NONE_DATA &&
     (be1->be_v_offset + be1->be_length != be2->be_v_offset))
  return 0;

 if (be1->be_state == PNFS_BLOCK_INVALID_DATA &&
     be1->be_tag != be2->be_tag)
  return 0;

 return 1;
}
