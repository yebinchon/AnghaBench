
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ffs_fc_hist; } ;
struct ocfs2_info_freefrag {TYPE_1__ iff_ffs; } ;


 int o2ffg_update_histogram (int *,unsigned int) ;
 int o2ffg_update_stats (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void ocfs2_info_update_ffg(struct ocfs2_info_freefrag *ffg,
      unsigned int chunksize)
{
 o2ffg_update_histogram(&(ffg->iff_ffs.ffs_fc_hist), chunksize);
 o2ffg_update_stats(&(ffg->iff_ffs), chunksize);
}
