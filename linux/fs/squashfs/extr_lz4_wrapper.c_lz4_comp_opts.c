
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct squashfs_sb_info {int dummy; } ;
struct lz4_comp_opts {int version; } ;


 int EINVAL ;
 int EIO ;
 int ERROR (char*) ;
 void* ERR_PTR (int ) ;
 scalar_t__ LZ4_LEGACY ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void *lz4_comp_opts(struct squashfs_sb_info *msblk,
 void *buff, int len)
{
 struct lz4_comp_opts *comp_opts = buff;


 if (comp_opts == ((void*)0) || len < sizeof(*comp_opts))
  return ERR_PTR(-EIO);

 if (le32_to_cpu(comp_opts->version) != LZ4_LEGACY) {


  ERROR("Unknown LZ4 version\n");
  return ERR_PTR(-EINVAL);
 }

 return ((void*)0);
}
