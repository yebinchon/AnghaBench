
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* umode_t ;
typedef int uid_t ;
typedef int substring_t ;
struct hfs_sb_info {int s_file_umask; int s_dir_umask; int s_quiet; int part; int session; void* nls_io; void* nls_disk; int s_creator; int s_type; int s_gid; int s_uid; } ;
typedef int gid_t ;


 int MAX_OPT_ARGS ;
 int cpu_to_be32 (int) ;
 int current_gid () ;
 int current_uid () ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int kfree (char*) ;
 void* load_nls (char*) ;
 void* load_nls_default () ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int match_fourchar (int *,int *) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*,...) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int parse_options(char *options, struct hfs_sb_info *hsb)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int tmp, token;


 hsb->s_uid = current_uid();
 hsb->s_gid = current_gid();
 hsb->s_file_umask = 0133;
 hsb->s_dir_umask = 0022;
 hsb->s_type = hsb->s_creator = cpu_to_be32(0x3f3f3f3f);
 hsb->s_quiet = 0;
 hsb->part = -1;
 hsb->session = -1;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 129:
   if (match_int(&args[0], &tmp)) {
    pr_err("uid requires an argument\n");
    return 0;
   }
   hsb->s_uid = make_kuid(current_user_ns(), (uid_t)tmp);
   if (!uid_valid(hsb->s_uid)) {
    pr_err("invalid uid %d\n", tmp);
    return 0;
   }
   break;
  case 135:
   if (match_int(&args[0], &tmp)) {
    pr_err("gid requires an argument\n");
    return 0;
   }
   hsb->s_gid = make_kgid(current_user_ns(), (gid_t)tmp);
   if (!gid_valid(hsb->s_gid)) {
    pr_err("invalid gid %d\n", tmp);
    return 0;
   }
   break;
  case 128:
   if (match_octal(&args[0], &tmp)) {
    pr_err("umask requires a value\n");
    return 0;
   }
   hsb->s_file_umask = (umode_t)tmp;
   hsb->s_dir_umask = (umode_t)tmp;
   break;
  case 136:
   if (match_octal(&args[0], &tmp)) {
    pr_err("file_umask requires a value\n");
    return 0;
   }
   hsb->s_file_umask = (umode_t)tmp;
   break;
  case 137:
   if (match_octal(&args[0], &tmp)) {
    pr_err("dir_umask requires a value\n");
    return 0;
   }
   hsb->s_dir_umask = (umode_t)tmp;
   break;
  case 133:
   if (match_int(&args[0], &hsb->part)) {
    pr_err("part requires an argument\n");
    return 0;
   }
   break;
  case 131:
   if (match_int(&args[0], &hsb->session)) {
    pr_err("session requires an argument\n");
    return 0;
   }
   break;
  case 130:
   if (match_fourchar(&args[0], &hsb->s_type)) {
    pr_err("type requires a 4 character value\n");
    return 0;
   }
   break;
  case 138:
   if (match_fourchar(&args[0], &hsb->s_creator)) {
    pr_err("creator requires a 4 character value\n");
    return 0;
   }
   break;
  case 132:
   hsb->s_quiet = 1;
   break;
  case 139:
   if (hsb->nls_disk) {
    pr_err("unable to change codepage\n");
    return 0;
   }
   p = match_strdup(&args[0]);
   if (p)
    hsb->nls_disk = load_nls(p);
   if (!hsb->nls_disk) {
    pr_err("unable to load codepage \"%s\"\n", p);
    kfree(p);
    return 0;
   }
   kfree(p);
   break;
  case 134:
   if (hsb->nls_io) {
    pr_err("unable to change iocharset\n");
    return 0;
   }
   p = match_strdup(&args[0]);
   if (p)
    hsb->nls_io = load_nls(p);
   if (!hsb->nls_io) {
    pr_err("unable to load iocharset \"%s\"\n", p);
    kfree(p);
    return 0;
   }
   kfree(p);
   break;
  default:
   return 0;
  }
 }

 if (hsb->nls_disk && !hsb->nls_io) {
  hsb->nls_io = load_nls_default();
  if (!hsb->nls_io) {
   pr_err("unable to load default iocharset\n");
   return 0;
  }
 }
 hsb->s_dir_umask &= 0777;
 hsb->s_file_umask &= 0577;

 return 1;
}
