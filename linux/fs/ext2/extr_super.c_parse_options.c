
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {int dummy; } ;
struct ext2_mount_options {int s_mount_opt; int s_resgid; int s_resuid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int CHECK ;
 int DAX ;
 int DEBUG ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 int GRPID ;
 int GRPQUOTA ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int MAX_OPT_ARGS ;
 int MINIX_DF ;
 int NOBH ;
 int NO_UID32 ;
 int OLDALLOC ;
 int POSIX_ACL ;
 int RESERVATION ;
 int USRQUOTA ;
 int XATTR_USER ;
 int XIP ;
 int clear_opt (int ,int ) ;
 int current_user_ns () ;
 int ext2_msg (struct super_block*,int ,char*,...) ;
 int gid_valid (int ) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int set_opt (int ,int ) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int parse_options(char *options, struct super_block *sb,
    struct ext2_mount_options *opts)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int option;
 kuid_t uid;
 kgid_t gid;

 if (!options)
  return 1;

 while ((p = strsep (&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 154:
   clear_opt (opts->s_mount_opt, MINIX_DF);
   break;
  case 145:
   set_opt (opts->s_mount_opt, MINIX_DF);
   break;
  case 148:
   set_opt (opts->s_mount_opt, GRPID);
   break;
  case 141:
   clear_opt (opts->s_mount_opt, GRPID);
   break;
  case 132:
   if (match_int(&args[0], &option))
    return 0;
   uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(uid)) {
    ext2_msg(sb, KERN_ERR, "Invalid uid value %d", option);
    return 0;

   }
   opts->s_resuid = uid;
   break;
  case 133:
   if (match_int(&args[0], &option))
    return 0;
   gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(gid)) {
    ext2_msg(sb, KERN_ERR, "Invalid gid value %d", option);
    return 0;
   }
   opts->s_resgid = gid;
   break;
  case 131:


   break;
  case 150:
   clear_opt (opts->s_mount_opt, ERRORS_CONT);
   clear_opt (opts->s_mount_opt, ERRORS_RO);
   set_opt (opts->s_mount_opt, ERRORS_PANIC);
   break;
  case 149:
   clear_opt (opts->s_mount_opt, ERRORS_CONT);
   clear_opt (opts->s_mount_opt, ERRORS_PANIC);
   set_opt (opts->s_mount_opt, ERRORS_RO);
   break;
  case 151:
   clear_opt (opts->s_mount_opt, ERRORS_RO);
   clear_opt (opts->s_mount_opt, ERRORS_PANIC);
   set_opt (opts->s_mount_opt, ERRORS_CONT);
   break;
  case 139:
   set_opt (opts->s_mount_opt, NO_UID32);
   break;
  case 142:
   ext2_msg(sb, KERN_WARNING,
    "Option nocheck/check=none is deprecated and"
    " will be removed in June 2020.");
   clear_opt (opts->s_mount_opt, CHECK);
   break;
  case 152:
   set_opt (opts->s_mount_opt, DEBUG);
   break;
  case 137:
   set_opt (opts->s_mount_opt, OLDALLOC);
   break;
  case 136:
   clear_opt (opts->s_mount_opt, OLDALLOC);
   break;
  case 143:
   set_opt (opts->s_mount_opt, NOBH);
   break;
  case 130:
  case 138:
   ext2_msg(sb, KERN_INFO, "(no)user_xattr options"
    "not supported");
   break;
  case 155:
  case 144:
   ext2_msg(sb, KERN_INFO,
    "(no)acl options not supported");
   break;

  case 128:
   ext2_msg(sb, KERN_INFO, "use dax instead of xip");
   set_opt(opts->s_mount_opt, XIP);

  case 153:





   ext2_msg(sb, KERN_INFO, "dax option not supported");

   break;
  case 135:
  case 129:
  case 147:
   ext2_msg(sb, KERN_INFO,
    "quota operations not supported");
   break;


  case 134:
   set_opt(opts->s_mount_opt, RESERVATION);
   ext2_msg(sb, KERN_INFO, "reservations ON");
   break;
  case 140:
   clear_opt(opts->s_mount_opt, RESERVATION);
   ext2_msg(sb, KERN_INFO, "reservations OFF");
   break;
  case 146:
   break;
  default:
   return 0;
  }
 }
 return 1;
}
