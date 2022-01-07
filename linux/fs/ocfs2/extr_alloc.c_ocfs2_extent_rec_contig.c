
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {scalar_t__ e_flags; int e_blkno; } ;
typedef enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;


 int CONTIG_LEFT ;
 int CONTIG_NONE ;
 int CONTIG_RIGHT ;
 int le64_to_cpu (int ) ;
 scalar_t__ ocfs2_block_extent_contig (struct super_block*,struct ocfs2_extent_rec*,int ) ;
 scalar_t__ ocfs2_extents_adjacent (struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static enum ocfs2_contig_type
 ocfs2_extent_rec_contig(struct super_block *sb,
    struct ocfs2_extent_rec *ext,
    struct ocfs2_extent_rec *insert_rec)
{
 u64 blkno = le64_to_cpu(insert_rec->e_blkno);






 if (ext->e_flags != insert_rec->e_flags)
  return CONTIG_NONE;

 if (ocfs2_extents_adjacent(ext, insert_rec) &&
     ocfs2_block_extent_contig(sb, ext, blkno))
   return CONTIG_RIGHT;

 blkno = le64_to_cpu(ext->e_blkno);
 if (ocfs2_extents_adjacent(insert_rec, ext) &&
     ocfs2_block_extent_contig(sb, insert_rec, blkno))
  return CONTIG_LEFT;

 return CONTIG_NONE;
}
