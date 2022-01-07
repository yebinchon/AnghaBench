
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_ext_path {scalar_t__ p_block; TYPE_1__* p_hdr; int * p_idx; } ;
struct TYPE_2__ {int eh_entries; } ;


 int BUG_ON (int ) ;
 int * EXT_FIRST_INDEX (TYPE_1__*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int
ext4_ext_more_to_rm(struct ext4_ext_path *path)
{
 BUG_ON(path->p_idx == ((void*)0));

 if (path->p_idx < EXT_FIRST_INDEX(path->p_hdr))
  return 0;





 if (le16_to_cpu(path->p_hdr->eh_entries) == path->p_block)
  return 0;
 return 1;
}
