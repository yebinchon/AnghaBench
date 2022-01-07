
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct tracefs_mount_opts {int mode; int gid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EINVAL ;
 int MAX_OPT_ARGS ;



 int S_IALLUGO ;
 int TRACEFS_DEFAULT_MODE ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int tracefs_parse_options(char *data, struct tracefs_mount_opts *opts)
{
 substring_t args[MAX_OPT_ARGS];
 int option;
 int token;
 kuid_t uid;
 kgid_t gid;
 char *p;

 opts->mode = TRACEFS_DEFAULT_MODE;

 while ((p = strsep(&data, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 128:
   if (match_int(&args[0], &option))
    return -EINVAL;
   uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(uid))
    return -EINVAL;
   opts->uid = uid;
   break;
  case 130:
   if (match_int(&args[0], &option))
    return -EINVAL;
   gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(gid))
    return -EINVAL;
   opts->gid = gid;
   break;
  case 129:
   if (match_octal(&args[0], &option))
    return -EINVAL;
   opts->mode = option & S_IALLUGO;
   break;




  }
 }

 return 0;
}
