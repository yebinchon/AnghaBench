
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ocfs2_super {int s_clustersize; unsigned int osb_clusters_at_boot; unsigned int max_slots; struct super_block* sb; int s_feature_incompat; } ;


 unsigned int OCFS2_LA_MAX_DEFAULT_MB ;
 unsigned int OCFS2_LA_OLD_DEFAULT ;
 unsigned int ocfs2_clusters_to_megabytes (struct super_block*,int) ;
 int ocfs2_group_bitmap_size (struct super_block*,int ,int ) ;
 int ocfs2_local_alloc_size (struct super_block*) ;

unsigned int ocfs2_la_default_mb(struct ocfs2_super *osb)
{
 unsigned int la_mb;
 unsigned int gd_mb;
 unsigned int la_max_mb;
 unsigned int megs_per_slot;
 struct super_block *sb = osb->sb;

 gd_mb = ocfs2_clusters_to_megabytes(osb->sb,
  8 * ocfs2_group_bitmap_size(sb, 0, osb->s_feature_incompat));






 if ((sb->s_blocksize == 512 && osb->s_clustersize <= 8192)
     || (sb->s_blocksize == 1024 && osb->s_clustersize == 4096))
  return OCFS2_LA_OLD_DEFAULT;





 gd_mb -= 16;
 gd_mb &= 0xFFFFFFFB;

 la_mb = gd_mb;




 if (la_mb > OCFS2_LA_MAX_DEFAULT_MB) {
  if (gd_mb > (2 * OCFS2_LA_MAX_DEFAULT_MB))
   la_mb = 256;
  else {
   unsigned int gd_mult = gd_mb;

   while (gd_mult > 256)
    gd_mult = gd_mult >> 1;

   la_mb = gd_mult;
  }
 }

 megs_per_slot = osb->osb_clusters_at_boot / osb->max_slots;
 megs_per_slot = ocfs2_clusters_to_megabytes(osb->sb, megs_per_slot);

 if (megs_per_slot < la_mb)
  la_mb = megs_per_slot;


 la_max_mb = ocfs2_clusters_to_megabytes(osb->sb,
      ocfs2_local_alloc_size(sb) * 8);
 if (la_mb > la_max_mb)
  la_mb = la_max_mb;

 return la_mb;
}
