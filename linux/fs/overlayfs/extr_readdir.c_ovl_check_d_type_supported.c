
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int actor; } ;
struct ovl_readdir_data {int d_type_supported; TYPE_1__ ctx; } ;


 int ovl_check_d_type ;
 int ovl_dir_read (struct path*,struct ovl_readdir_data*) ;

int ovl_check_d_type_supported(struct path *realpath)
{
 int err;
 struct ovl_readdir_data rdd = {
  .ctx.actor = ovl_check_d_type,
  .d_type_supported = 0,
 };

 err = ovl_dir_read(realpath, &rdd);
 if (err)
  return err;

 return rdd.d_type_supported;
}
