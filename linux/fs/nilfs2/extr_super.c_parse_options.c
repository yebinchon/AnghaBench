
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int from; } ;
typedef TYPE_1__ substring_t ;
struct the_nilfs {int dummy; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;


 int BARRIER ;
 int DISCARD ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 int ERROR_MODE ;
 int KERN_ERR ;
 int MAX_OPT_ARGS ;
 int NORECOVERY ;
 int STRICT_ORDER ;
 int match_token (char*,int ,TYPE_1__*) ;
 int nilfs_clear_opt (struct the_nilfs*,int ) ;
 int nilfs_msg (struct super_block*,int ,char*,char*) ;
 int nilfs_set_opt (struct the_nilfs*,int ) ;
 int nilfs_write_opt (struct the_nilfs*,int ,int ) ;
 int strcmp (int ,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_options(char *options, struct super_block *sb, int is_remount)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 char *p;
 substring_t args[MAX_OPT_ARGS];

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 137:
   nilfs_set_opt(nilfs, BARRIER);
   break;
  case 132:
   nilfs_clear_opt(nilfs, BARRIER);
   break;
  case 129:
   if (strcmp(args[0].from, "relaxed") == 0)

    nilfs_clear_opt(nilfs, STRICT_ORDER);
   else if (strcmp(args[0].from, "strict") == 0)

    nilfs_set_opt(nilfs, STRICT_ORDER);
   else
    return 0;
   break;
  case 134:
   nilfs_write_opt(nilfs, ERROR_MODE, ERRORS_PANIC);
   break;
  case 133:
   nilfs_write_opt(nilfs, ERROR_MODE, ERRORS_RO);
   break;
  case 135:
   nilfs_write_opt(nilfs, ERROR_MODE, ERRORS_CONT);
   break;
  case 128:
   if (is_remount) {
    nilfs_msg(sb, KERN_ERR,
       "\"%s\" option is invalid for remount",
       p);
    return 0;
   }
   break;
  case 130:
   nilfs_set_opt(nilfs, NORECOVERY);
   break;
  case 136:
   nilfs_set_opt(nilfs, DISCARD);
   break;
  case 131:
   nilfs_clear_opt(nilfs, DISCARD);
   break;
  default:
   nilfs_msg(sb, KERN_ERR,
      "unrecognized mount option \"%s\"", p);
   return 0;
  }
 }
 return 1;
}
