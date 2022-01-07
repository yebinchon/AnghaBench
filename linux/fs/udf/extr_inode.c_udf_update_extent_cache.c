
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {TYPE_2__ epos; int lstart; } ;
struct udf_inode_info {int i_alloc_type; int i_extent_cache_lock; TYPE_1__ cached_extent; } ;
struct short_ad {int dummy; } ;
struct long_ad {int dummy; } ;
struct inode {int dummy; } ;
struct extent_position {scalar_t__ bh; } ;
typedef int loff_t ;




 struct udf_inode_info* UDF_I (struct inode*) ;
 int __udf_clear_extent_cache (struct inode*) ;
 int get_bh (scalar_t__) ;
 int memcpy (TYPE_2__*,struct extent_position*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void udf_update_extent_cache(struct inode *inode, loff_t estart,
        struct extent_position *pos)
{
 struct udf_inode_info *iinfo = UDF_I(inode);

 spin_lock(&iinfo->i_extent_cache_lock);

 __udf_clear_extent_cache(inode);
 if (pos->bh)
  get_bh(pos->bh);
 memcpy(&iinfo->cached_extent.epos, pos, sizeof(*pos));
 iinfo->cached_extent.lstart = estart;
 switch (iinfo->i_alloc_type) {
 case 128:
  iinfo->cached_extent.epos.offset -= sizeof(struct short_ad);
  break;
 case 129:
  iinfo->cached_extent.epos.offset -= sizeof(struct long_ad);
  break;
 }
 spin_unlock(&iinfo->i_extent_cache_lock);
}
