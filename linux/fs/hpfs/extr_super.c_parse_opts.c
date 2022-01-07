
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_5__ {char* from; } ;
typedef TYPE_1__ substring_t ;
typedef int kuid_t ;
typedef int kgid_t ;


 int MAX_OPT_ARGS ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (TYPE_1__*,int*) ;
 int match_octal (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int simple_strtoul (char*,char**,int ) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;

__attribute__((used)) static int parse_opts(char *opts, kuid_t *uid, kgid_t *gid, umode_t *umask,
        int *lowercase, int *eas, int *chk, int *errs,
        int *chkdsk, int *timeshift)
{
 char *p;
 int option;

 if (!opts)
  return 1;



 while ((p = strsep(&opts, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 131:
   return 2;
  case 129:
   if (match_int(args, &option))
    return 0;
   *uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(*uid))
    return 0;
   break;
  case 132:
   if (match_int(args, &option))
    return 0;
   *gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(*gid))
    return 0;
   break;
  case 128:
   if (match_octal(args, &option))
    return 0;
   *umask = option;
   break;
  case 145:
   *lowercase = 1;
   break;
  case 146:
   *lowercase = 0;
   break;
  case 144:
   *chk = 0;
   break;
  case 143:
   *chk = 1;
   break;
  case 142:
   *chk = 2;
   break;
  case 135:
   *errs = 0;
   break;
  case 133:
   *errs = 1;
   break;
  case 134:
   *errs = 2;
   break;
  case 138:
   *eas = 0;
   break;
  case 137:
   *eas = 1;
   break;
  case 136:
   *eas = 2;
   break;
  case 139:
   *chkdsk = 0;
   break;
  case 140:
   *chkdsk = 1;
   break;
  case 141:
   *chkdsk = 2;
   break;
  case 130:
  {
   int m = 1;
   char *rhs = args[0].from;
   if (!rhs || !*rhs)
    return 0;
   if (*rhs == '-') m = -1;
   if (*rhs == '+' || *rhs == '-') rhs++;
   *timeshift = simple_strtoul(rhs, &rhs, 0) * m;
   if (*rhs)
    return 0;
   break;
  }
  default:
   return 0;
  }
 }
 return 1;
}
