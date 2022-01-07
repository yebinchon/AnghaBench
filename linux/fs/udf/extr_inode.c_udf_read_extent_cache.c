
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lstart; int epos; } ;
struct udf_inode_info {int i_extent_cache_lock; TYPE_1__ cached_extent; } ;
struct inode {int dummy; } ;
struct extent_position {scalar_t__ bh; } ;
typedef int loff_t ;


 struct udf_inode_info* UDF_I (struct inode*) ;
 int get_bh (scalar_t__) ;
 int memcpy (struct extent_position*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int udf_read_extent_cache(struct inode *inode, loff_t bcount,
     loff_t *lbcount, struct extent_position *pos)
{
 struct udf_inode_info *iinfo = UDF_I(inode);
 int ret = 0;

 spin_lock(&iinfo->i_extent_cache_lock);
 if ((iinfo->cached_extent.lstart <= bcount) &&
     (iinfo->cached_extent.lstart != -1)) {

  *lbcount = iinfo->cached_extent.lstart;
  memcpy(pos, &iinfo->cached_extent.epos,
         sizeof(struct extent_position));
  if (pos->bh)
   get_bh(pos->bh);
  ret = 1;
 }
 spin_unlock(&iinfo->i_extent_cache_lock);
 return ret;
}
