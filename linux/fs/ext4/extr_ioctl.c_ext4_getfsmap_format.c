
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct getfsmap_info {int gi_idx; TYPE_1__* gi_data; int gi_sb; int gi_last_flags; } ;
struct fsmap {int dummy; } ;
struct ext4_fsmap {int fmr_flags; } ;
struct TYPE_2__ {int * fmh_recs; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int *,struct fsmap*,int) ;
 int ext4_fsmap_from_internal (int ,struct fsmap*,struct ext4_fsmap*) ;
 int trace_ext4_getfsmap_mapping (int ,struct ext4_fsmap*) ;

__attribute__((used)) static int ext4_getfsmap_format(struct ext4_fsmap *xfm, void *priv)
{
 struct getfsmap_info *info = priv;
 struct fsmap fm;

 trace_ext4_getfsmap_mapping(info->gi_sb, xfm);

 info->gi_last_flags = xfm->fmr_flags;
 ext4_fsmap_from_internal(info->gi_sb, &fm, xfm);
 if (copy_to_user(&info->gi_data->fmh_recs[info->gi_idx++], &fm,
   sizeof(struct fsmap)))
  return -EFAULT;

 return 0;
}
