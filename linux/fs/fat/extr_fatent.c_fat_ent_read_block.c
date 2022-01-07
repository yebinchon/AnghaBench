
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fatent_operations {int (* ent_bread ) (struct super_block*,struct fat_entry*,int,int ) ;int (* ent_blocknr ) (struct super_block*,int ,int*,int *) ;} ;
struct fat_entry {int entry; } ;
typedef int sector_t ;
struct TYPE_2__ {struct fatent_operations* fatent_ops; } ;


 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int fatent_brelse (struct fat_entry*) ;
 int stub1 (struct super_block*,int ,int*,int *) ;
 int stub2 (struct super_block*,struct fat_entry*,int,int ) ;

__attribute__((used)) static inline int fat_ent_read_block(struct super_block *sb,
         struct fat_entry *fatent)
{
 const struct fatent_operations *ops = MSDOS_SB(sb)->fatent_ops;
 sector_t blocknr;
 int offset;

 fatent_brelse(fatent);
 ops->ent_blocknr(sb, fatent->entry, &offset, &blocknr);
 return ops->ent_bread(sb, fatent, offset, blocknr);
}
