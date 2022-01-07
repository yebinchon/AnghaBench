
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unicode_map {int dummy; } ;
struct f2fs_sb_info {TYPE_1__* sb; int s_encoding_flags; struct unicode_map* s_encoding; int raw_super; } ;
struct f2fs_sb_encodings {scalar_t__ version; int name; } ;
typedef int __u16 ;
struct TYPE_2__ {int * s_d_op; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct unicode_map*) ;
 int PTR_ERR (struct unicode_map*) ;
 int f2fs_dentry_ops ;
 int f2fs_err (struct f2fs_sb_info*,char*,...) ;
 int f2fs_info (struct f2fs_sb_info*,char*,int ,char*,int ) ;
 scalar_t__ f2fs_sb_has_casefold (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_has_encrypt (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_sb_read_encoding (int ,struct f2fs_sb_encodings const**,int *) ;
 struct unicode_map* utf8_load (scalar_t__) ;

__attribute__((used)) static int f2fs_setup_casefold(struct f2fs_sb_info *sbi)
{
 if (f2fs_sb_has_casefold(sbi)) {
  f2fs_err(sbi, "Filesystem with casefold feature cannot be mounted without CONFIG_UNICODE");
  return -EINVAL;
 }

 return 0;
}
