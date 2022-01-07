
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct TYPE_6__ {scalar_t__ k_dir_id; } ;
struct TYPE_8__ {unsigned long search_start; scalar_t__ inode; TYPE_1__ key; scalar_t__ formatted_node; TYPE_2__* th; } ;
typedef TYPE_3__ reiserfs_blocknr_hint_t ;
typedef scalar_t__ __u32 ;
struct TYPE_9__ {int k_dir_id; } ;
struct TYPE_7__ {struct super_block* t_super; } ;


 TYPE_5__* INODE_PKEY (scalar_t__) ;
 int bmap_hash_id (struct super_block*,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void dirid_groups(reiserfs_blocknr_hint_t * hint)
{
 unsigned long hash;
 __u32 dirid = 0;
 int bm = 0;
 struct super_block *sb = hint->th->t_super;

 if (hint->inode)
  dirid = le32_to_cpu(INODE_PKEY(hint->inode)->k_dir_id);
 else if (hint->formatted_node)
  dirid = hint->key.k_dir_id;

 if (dirid) {
  bm = bmap_hash_id(sb, dirid);
  hash = bm * (sb->s_blocksize << 3);

  if (hint->inode)
   hash += sb->s_blocksize / 2;
  hint->search_start = hash;
 }
}
