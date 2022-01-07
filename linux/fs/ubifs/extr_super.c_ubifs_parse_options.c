
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int from; } ;
typedef TYPE_2__ substring_t ;
struct TYPE_5__ {int unmount_mode; int bulk_read; int chk_data_crc; int override_compr; int compr_type; } ;
struct ubifs_info {int bulk_read; int no_chk_data_crc; struct super_block* vfs_sb; void* auth_hash_name; void* auth_key_name; int assert_action; TYPE_1__ mount_opts; int default_compr; } ;
struct super_block {unsigned long s_flags; } ;


 int ASSACT_PANIC ;
 int ASSACT_REPORT ;
 int ASSACT_RO ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int UBIFS_COMPR_LZO ;
 int UBIFS_COMPR_NONE ;
 int UBIFS_COMPR_ZLIB ;
 int UBIFS_COMPR_ZSTD ;
 int kfree (char*) ;
 void* kstrdup (int ,int ) ;
 char* match_strdup (TYPE_2__*) ;
 int match_token (char*,int ,TYPE_2__*) ;
 unsigned long parse_standard_option (char*) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int ubifs_err (struct ubifs_info*,char*,char*) ;

__attribute__((used)) static int ubifs_parse_options(struct ubifs_info *c, char *options,
          int is_remount)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];

 if (!options)
  return 0;

 while ((p = strsep(&options, ","))) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {





  case 133:
   c->mount_opts.unmount_mode = 2;
   break;
  case 129:
   c->mount_opts.unmount_mode = 1;
   break;
  case 135:
   c->mount_opts.bulk_read = 2;
   c->bulk_read = 1;
   break;
  case 131:
   c->mount_opts.bulk_read = 1;
   c->bulk_read = 0;
   break;
  case 134:
   c->mount_opts.chk_data_crc = 2;
   c->no_chk_data_crc = 0;
   break;
  case 130:
   c->mount_opts.chk_data_crc = 1;
   c->no_chk_data_crc = 1;
   break;
  case 128:
  {
   char *name = match_strdup(&args[0]);

   if (!name)
    return -ENOMEM;
   if (!strcmp(name, "none"))
    c->mount_opts.compr_type = UBIFS_COMPR_NONE;
   else if (!strcmp(name, "lzo"))
    c->mount_opts.compr_type = UBIFS_COMPR_LZO;
   else if (!strcmp(name, "zlib"))
    c->mount_opts.compr_type = UBIFS_COMPR_ZLIB;
   else if (!strcmp(name, "zstd"))
    c->mount_opts.compr_type = UBIFS_COMPR_ZSTD;
   else {
    ubifs_err(c, "unknown compressor \"%s\"", name);
    kfree(name);
    return -EINVAL;
   }
   kfree(name);
   c->mount_opts.override_compr = 1;
   c->default_compr = c->mount_opts.compr_type;
   break;
  }
  case 138:
  {
   char *act = match_strdup(&args[0]);

   if (!act)
    return -ENOMEM;
   if (!strcmp(act, "report"))
    c->assert_action = ASSACT_REPORT;
   else if (!strcmp(act, "read-only"))
    c->assert_action = ASSACT_RO;
   else if (!strcmp(act, "panic"))
    c->assert_action = ASSACT_PANIC;
   else {
    ubifs_err(c, "unknown assert action \"%s\"", act);
    kfree(act);
    return -EINVAL;
   }
   kfree(act);
   break;
  }
  case 136:
   c->auth_key_name = kstrdup(args[0].from, GFP_KERNEL);
   if (!c->auth_key_name)
    return -ENOMEM;
   break;
  case 137:
   c->auth_hash_name = kstrdup(args[0].from, GFP_KERNEL);
   if (!c->auth_hash_name)
    return -ENOMEM;
   break;
  case 132:
   break;
  default:
  {
   unsigned long flag;
   struct super_block *sb = c->vfs_sb;

   flag = parse_standard_option(p);
   if (!flag) {
    ubifs_err(c, "unrecognized mount option \"%s\" or missing value",
       p);
    return -EINVAL;
   }
   sb->s_flags |= flag;
   break;
  }
  }
 }

 return 0;
}
