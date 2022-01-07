
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int from; } ;
typedef TYPE_1__ substring_t ;
struct udf_options {int novrs; int session; int lastblock; int anchor; unsigned int blocksize; int flags; int umask; int fmode; int dmode; int nls_map; int uid; int gid; } ;


 int MAX_OPT_ARGS ;
 int UDF_FLAG_BLOCKSIZE_SET ;
 int UDF_FLAG_GID_FORGET ;
 int UDF_FLAG_GID_SET ;
 int UDF_FLAG_LASTBLOCK_SET ;
 int UDF_FLAG_NLS_MAP ;
 int UDF_FLAG_SESSION_SET ;
 int UDF_FLAG_STRICT ;
 int UDF_FLAG_UID_FORGET ;
 int UDF_FLAG_UID_SET ;
 int UDF_FLAG_UNDELETE ;
 int UDF_FLAG_UNHIDE ;
 int UDF_FLAG_USE_AD_IN_ICB ;
 int UDF_FLAG_USE_SHORT_AD ;
 int UDF_FLAG_UTF8 ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int load_nls (int ) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_int (TYPE_1__*,int*) ;
 int match_octal (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int pr_err (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;
 int unload_nls (int ) ;

__attribute__((used)) static int udf_parse_options(char *options, struct udf_options *uopt,
        bool remount)
{
 char *p;
 int option;

 uopt->novrs = 0;
 uopt->session = 0xFFFFFFFF;
 uopt->lastblock = 0;
 uopt->anchor = 0;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  unsigned n;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 140:
   uopt->novrs = 1;
   break;
  case 152:
   if (match_int(&args[0], &option))
    return 0;
   n = option;
   if (n != 512 && n != 1024 && n != 2048 && n != 4096)
    return 0;
   uopt->blocksize = n;
   uopt->flags |= (1 << UDF_FLAG_BLOCKSIZE_SET);
   break;
  case 130:
   uopt->flags |= (1 << UDF_FLAG_UNHIDE);
   break;
  case 131:
   uopt->flags |= (1 << UDF_FLAG_UNDELETE);
   break;
  case 142:
   uopt->flags &= ~(1 << UDF_FLAG_USE_AD_IN_ICB);
   break;
  case 154:
   uopt->flags |= (1 << UDF_FLAG_USE_AD_IN_ICB);
   break;
  case 136:
   uopt->flags |= (1 << UDF_FLAG_USE_SHORT_AD);
   break;
  case 143:
   uopt->flags &= ~(1 << UDF_FLAG_USE_SHORT_AD);
   break;
  case 147:
   if (match_int(args, &option))
    return 0;
   uopt->gid = make_kgid(current_user_ns(), option);
   if (!gid_valid(uopt->gid))
    return 0;
   uopt->flags |= (1 << UDF_FLAG_GID_SET);
   break;
  case 134:
   if (match_int(args, &option))
    return 0;
   uopt->uid = make_kuid(current_user_ns(), option);
   if (!uid_valid(uopt->uid))
    return 0;
   uopt->flags |= (1 << UDF_FLAG_UID_SET);
   break;
  case 132:
   if (match_octal(args, &option))
    return 0;
   uopt->umask = option;
   break;
  case 141:
   uopt->flags &= ~(1 << UDF_FLAG_STRICT);
   break;
  case 137:
   if (match_int(args, &option))
    return 0;
   uopt->session = option;
   if (!remount)
    uopt->flags |= (1 << UDF_FLAG_SESSION_SET);
   break;
  case 144:
   if (match_int(args, &option))
    return 0;
   uopt->lastblock = option;
   if (!remount)
    uopt->flags |= (1 << UDF_FLAG_LASTBLOCK_SET);
   break;
  case 153:
   if (match_int(args, &option))
    return 0;
   uopt->anchor = option;
   break;
  case 128:
  case 139:
  case 150:
  case 138:

   break;
  case 129:
   uopt->flags |= (1 << UDF_FLAG_UTF8);
   break;
  case 145:
   if (!remount) {
    if (uopt->nls_map)
     unload_nls(uopt->nls_map);





    uopt->nls_map = load_nls(args[0].from);
    uopt->flags |= (1 << UDF_FLAG_NLS_MAP);
   }
   break;
  case 135:
   uopt->flags |= (1 << UDF_FLAG_UID_FORGET);
   break;
  case 133:
  case 146:

   break;
  case 148:
   uopt->flags |= (1 << UDF_FLAG_GID_FORGET);
   break;
  case 149:
   if (match_octal(args, &option))
    return 0;
   uopt->fmode = option & 0777;
   break;
  case 151:
   if (match_octal(args, &option))
    return 0;
   uopt->dmode = option & 0777;
   break;
  default:
   pr_err("bad mount option \"%s\" or missing value\n", p);
   return 0;
  }
 }
 return 1;
}
