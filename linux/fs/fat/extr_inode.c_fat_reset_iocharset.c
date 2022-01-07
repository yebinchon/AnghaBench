
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fat_mount_options {scalar_t__ iocharset; } ;


 scalar_t__ fat_default_iocharset ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void fat_reset_iocharset(struct fat_mount_options *opts)
{
 if (opts->iocharset != fat_default_iocharset) {

  kfree(opts->iocharset);
  opts->iocharset = fat_default_iocharset;
 }
}
