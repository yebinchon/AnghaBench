
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bh; } ;
struct TYPE_4__ {int lstart; TYPE_1__ epos; } ;
struct udf_inode_info {TYPE_2__ cached_extent; } ;
struct inode {int dummy; } ;


 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (int ) ;

__attribute__((used)) static void __udf_clear_extent_cache(struct inode *inode)
{
 struct udf_inode_info *iinfo = UDF_I(inode);

 if (iinfo->cached_extent.lstart != -1) {
  brelse(iinfo->cached_extent.epos.bh);
  iinfo->cached_extent.lstart = -1;
 }
}
