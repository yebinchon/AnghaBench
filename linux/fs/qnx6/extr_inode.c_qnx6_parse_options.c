
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {int dummy; } ;
struct qnx6_sb_info {int s_mount_opt; } ;


 int MAX_OPT_ARGS ;
 int MMI_FS ;

 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int match_token (char*,int ,int *) ;
 int set_opt (int ,int ) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int qnx6_parse_options(char *options, struct super_block *sb)
{
 char *p;
 struct qnx6_sb_info *sbi = QNX6_SB(sb);
 substring_t args[MAX_OPT_ARGS];

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   set_opt(sbi->s_mount_opt, MMI_FS);
   break;
  default:
   return 0;
  }
 }
 return 1;
}
