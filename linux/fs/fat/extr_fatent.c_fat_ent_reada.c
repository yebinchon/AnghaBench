
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fatent_operations {int (* ent_blocknr ) (struct super_block*,int ,int*,scalar_t__*) ;} ;
struct fat_entry {int entry; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {struct fatent_operations* fatent_ops; } ;


 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int sb_breadahead (struct super_block*,scalar_t__) ;
 int stub1 (struct super_block*,int ,int*,scalar_t__*) ;

__attribute__((used)) static void fat_ent_reada(struct super_block *sb, struct fat_entry *fatent,
     unsigned long reada_blocks)
{
 const struct fatent_operations *ops = MSDOS_SB(sb)->fatent_ops;
 sector_t blocknr;
 int i, offset;

 ops->ent_blocknr(sb, fatent->entry, &offset, &blocknr);

 for (i = 0; i < reada_blocks; i++)
  sb_breadahead(sb, blocknr + i);
}
