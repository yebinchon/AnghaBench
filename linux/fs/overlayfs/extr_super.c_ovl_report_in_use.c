
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; } ;
struct ovl_fs {TYPE_1__ config; } ;


 int EBUSY ;
 int pr_err (char*,char const*) ;
 int pr_warn (char*,char const*) ;

__attribute__((used)) static int ovl_report_in_use(struct ovl_fs *ofs, const char *name)
{
 if (ofs->config.index) {
  pr_err("overlayfs: %s is in-use as upperdir/workdir of another mount, mount with '-o index=off' to override exclusive upperdir protection.\n",
         name);
  return -EBUSY;
 } else {
  pr_warn("overlayfs: %s is in-use as upperdir/workdir of another mount, accessing files from both mounts will result in undefined behavior.\n",
   name);
  return 0;
 }
}
