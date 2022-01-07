
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int uid_t ;
typedef int substring_t ;
struct hfsplus_sb_info {int part; int session; void* nls; int flags; int gid; int uid; int umask; int type; int creator; } ;
typedef int gid_t ;


 int HFSPLUS_SB_FORCE ;
 int HFSPLUS_SB_NOBARRIER ;
 int HFSPLUS_SB_NODECOMPOSE ;
 int MAX_OPT_ARGS ;
 int clear_bit (int ,int *) ;
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
 int set_bit (int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

int hfsplus_parse_options(char *input, struct hfsplus_sb_info *sbi)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];
 int tmp, token;

 if (!input)
  goto done;

 while ((p = strsep(&input, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 139:
   if (match_fourchar(&args[0], &sbi->creator)) {
    pr_err("creator requires a 4 character value\n");
    return 0;
   }
   break;
  case 130:
   if (match_fourchar(&args[0], &sbi->type)) {
    pr_err("type requires a 4 character value\n");
    return 0;
   }
   break;
  case 128:
   if (match_octal(&args[0], &tmp)) {
    pr_err("umask requires a value\n");
    return 0;
   }
   sbi->umask = (umode_t)tmp;
   break;
  case 129:
   if (match_int(&args[0], &tmp)) {
    pr_err("uid requires an argument\n");
    return 0;
   }
   sbi->uid = make_kuid(current_user_ns(), (uid_t)tmp);
   if (!uid_valid(sbi->uid)) {
    pr_err("invalid uid specified\n");
    return 0;
   }
   break;
  case 136:
   if (match_int(&args[0], &tmp)) {
    pr_err("gid requires an argument\n");
    return 0;
   }
   sbi->gid = make_kgid(current_user_ns(), (gid_t)tmp);
   if (!gid_valid(sbi->gid)) {
    pr_err("invalid gid specified\n");
    return 0;
   }
   break;
  case 132:
   if (match_int(&args[0], &sbi->part)) {
    pr_err("part requires an argument\n");
    return 0;
   }
   break;
  case 131:
   if (match_int(&args[0], &sbi->session)) {
    pr_err("session requires an argument\n");
    return 0;
   }
   break;
  case 135:
   if (sbi->nls) {
    pr_err("unable to change nls mapping\n");
    return 0;
   }
   p = match_strdup(&args[0]);
   if (p)
    sbi->nls = load_nls(p);
   if (!sbi->nls) {
    pr_err("unable to load nls mapping \"%s\"\n",
           p);
    kfree(p);
    return 0;
   }
   kfree(p);
   break;
  case 138:
   clear_bit(HFSPLUS_SB_NODECOMPOSE, &sbi->flags);
   break;
  case 133:
   set_bit(HFSPLUS_SB_NODECOMPOSE, &sbi->flags);
   break;
  case 140:
   clear_bit(HFSPLUS_SB_NOBARRIER, &sbi->flags);
   break;
  case 134:
   set_bit(HFSPLUS_SB_NOBARRIER, &sbi->flags);
   break;
  case 137:
   set_bit(HFSPLUS_SB_FORCE, &sbi->flags);
   break;
  default:
   return 0;
  }
 }

done:
 if (!sbi->nls) {

  sbi->nls = load_nls("utf8");
  if (!sbi->nls)
   sbi->nls = load_nls_default();
  if (!sbi->nls)
   return 0;
 }

 return 1;
}
