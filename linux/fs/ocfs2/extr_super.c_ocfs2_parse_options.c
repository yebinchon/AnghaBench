
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {size_t to; size_t from; } ;
typedef TYPE_1__ substring_t ;
struct super_block {int dummy; } ;
struct mount_options {int commit_interval; int mount_opt; int atime_quantum; int localalloc_opt; char* cluster_stack; int resv_level; int dir_resv_level; int slot; } ;
typedef int s16 ;


 int HZ ;
 int JBD2_DEFAULT_MAX_COMMIT_AGE ;
 int MAX_OPT_ARGS ;
 int ML_ERROR ;
 int OCFS2_CLASSIC_CLUSTER_STACK ;
 int OCFS2_DEFAULT_ATIME_QUANTUM ;
 int OCFS2_DEFAULT_RESV_LEVEL ;
 int OCFS2_INVALID_SLOT ;
 int OCFS2_MAX_RESV_LEVEL ;
 int OCFS2_MIN_RESV_LEVEL ;
 int OCFS2_MOUNT_BARRIER ;
 int OCFS2_MOUNT_COHERENCY_BUFFERED ;
 int OCFS2_MOUNT_DATA_WRITEBACK ;
 int OCFS2_MOUNT_ERRORS_CONT ;
 int OCFS2_MOUNT_ERRORS_PANIC ;
 int OCFS2_MOUNT_ERRORS_ROFS ;
 int OCFS2_MOUNT_GRPQUOTA ;
 int OCFS2_MOUNT_HB_GLOBAL ;
 int OCFS2_MOUNT_HB_LOCAL ;
 int OCFS2_MOUNT_HB_NONE ;
 int OCFS2_MOUNT_INODE64 ;
 int OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT ;
 int OCFS2_MOUNT_LOCALFLOCKS ;
 int OCFS2_MOUNT_NOINTR ;
 int OCFS2_MOUNT_NOUSERXATTR ;
 int OCFS2_MOUNT_NO_POSIX_ACL ;
 int OCFS2_MOUNT_POSIX_ACL ;
 int OCFS2_MOUNT_USRQUOTA ;
 size_t OCFS2_STACK_LABEL_LEN ;
 int hweight32 (int) ;
 int match_int (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int memcmp (char*,int ,size_t) ;
 int memcpy (char*,size_t,size_t) ;
 int mlog (int ,char*,...) ;
 size_t strnlen (size_t,size_t) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int trace_ocfs2_parse_options (int,char*) ;

__attribute__((used)) static int ocfs2_parse_options(struct super_block *sb,
          char *options,
          struct mount_options *mopt,
          int is_remount)
{
 int status, user_stack = 0;
 char *p;
 u32 tmp;
 int token, option;
 substring_t args[MAX_OPT_ARGS];

 trace_ocfs2_parse_options(is_remount, options ? options : "(none)");

 mopt->commit_interval = 0;
 mopt->mount_opt = OCFS2_MOUNT_NOINTR;
 mopt->atime_quantum = OCFS2_DEFAULT_ATIME_QUANTUM;
 mopt->slot = OCFS2_INVALID_SLOT;
 mopt->localalloc_opt = -1;
 mopt->cluster_stack[0] = '\0';
 mopt->resv_level = OCFS2_DEFAULT_RESV_LEVEL;
 mopt->dir_resv_level = -1;

 if (!options) {
  status = 1;
  goto bail;
 }

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 142:
   mopt->mount_opt |= OCFS2_MOUNT_HB_LOCAL;
   break;
  case 141:
   mopt->mount_opt |= OCFS2_MOUNT_HB_NONE;
   break;
  case 143:
   mopt->mount_opt |= OCFS2_MOUNT_HB_GLOBAL;
   break;
  case 154:
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option)
    mopt->mount_opt |= OCFS2_MOUNT_BARRIER;
   else
    mopt->mount_opt &= ~OCFS2_MOUNT_BARRIER;
   break;
  case 139:
   mopt->mount_opt &= ~OCFS2_MOUNT_NOINTR;
   break;
  case 134:
   mopt->mount_opt |= OCFS2_MOUNT_NOINTR;
   break;
  case 146:
   mopt->mount_opt &= ~OCFS2_MOUNT_ERRORS_CONT;
   mopt->mount_opt &= ~OCFS2_MOUNT_ERRORS_ROFS;
   mopt->mount_opt |= OCFS2_MOUNT_ERRORS_PANIC;
   break;
  case 145:
   mopt->mount_opt &= ~OCFS2_MOUNT_ERRORS_CONT;
   mopt->mount_opt &= ~OCFS2_MOUNT_ERRORS_PANIC;
   mopt->mount_opt |= OCFS2_MOUNT_ERRORS_ROFS;
   break;
  case 147:
   mopt->mount_opt &= ~OCFS2_MOUNT_ERRORS_ROFS;
   mopt->mount_opt &= ~OCFS2_MOUNT_ERRORS_PANIC;
   mopt->mount_opt |= OCFS2_MOUNT_ERRORS_CONT;
   break;
  case 150:
   mopt->mount_opt &= ~OCFS2_MOUNT_DATA_WRITEBACK;
   break;
  case 149:
   mopt->mount_opt |= OCFS2_MOUNT_DATA_WRITEBACK;
   break;
  case 129:
   mopt->mount_opt &= ~OCFS2_MOUNT_NOUSERXATTR;
   break;
  case 133:
   mopt->mount_opt |= OCFS2_MOUNT_NOUSERXATTR;
   break;
  case 155:
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option >= 0)
    mopt->atime_quantum = option;
   break;
  case 131:
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option)
    mopt->slot = (s16)option;
   break;
  case 151:
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option < 0)
    return 0;
   if (option == 0)
    option = JBD2_DEFAULT_MAX_COMMIT_AGE;
   mopt->commit_interval = HZ * option;
   break;
  case 137:
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option >= 0)
    mopt->localalloc_opt = option;
   break;
  case 136:
   if (!is_remount)
    mopt->mount_opt |= OCFS2_MOUNT_LOCALFLOCKS;
   break;
  case 130:




   if (((args[0].to - args[0].from) !=
        OCFS2_STACK_LABEL_LEN) ||
       (strnlen(args[0].from,
         OCFS2_STACK_LABEL_LEN) !=
        OCFS2_STACK_LABEL_LEN)) {
    mlog(ML_ERROR,
         "Invalid cluster_stack option\n");
    status = 0;
    goto bail;
   }
   memcpy(mopt->cluster_stack, args[0].from,
          OCFS2_STACK_LABEL_LEN);
   mopt->cluster_stack[OCFS2_STACK_LABEL_LEN] = '\0';





   if (memcmp(mopt->cluster_stack,
       OCFS2_CLASSIC_CLUSTER_STACK,
       OCFS2_STACK_LABEL_LEN))
    user_stack = 1;
   break;
  case 140:
   mopt->mount_opt |= OCFS2_MOUNT_INODE64;
   break;
  case 128:
   mopt->mount_opt |= OCFS2_MOUNT_USRQUOTA;
   break;
  case 144:
   mopt->mount_opt |= OCFS2_MOUNT_GRPQUOTA;
   break;
  case 153:
   mopt->mount_opt |= OCFS2_MOUNT_COHERENCY_BUFFERED;
   break;
  case 152:
   mopt->mount_opt &= ~OCFS2_MOUNT_COHERENCY_BUFFERED;
   break;
  case 156:
   mopt->mount_opt |= OCFS2_MOUNT_POSIX_ACL;
   mopt->mount_opt &= ~OCFS2_MOUNT_NO_POSIX_ACL;
   break;
  case 135:
   mopt->mount_opt |= OCFS2_MOUNT_NO_POSIX_ACL;
   mopt->mount_opt &= ~OCFS2_MOUNT_POSIX_ACL;
   break;
  case 132:
   if (is_remount)
    break;
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option >= OCFS2_MIN_RESV_LEVEL &&
       option < OCFS2_MAX_RESV_LEVEL)
    mopt->resv_level = option;
   break;
  case 148:
   if (is_remount)
    break;
   if (match_int(&args[0], &option)) {
    status = 0;
    goto bail;
   }
   if (option >= OCFS2_MIN_RESV_LEVEL &&
       option < OCFS2_MAX_RESV_LEVEL)
    mopt->dir_resv_level = option;
   break;
  case 138:
   mopt->mount_opt |= OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT;
   break;
  default:
   mlog(ML_ERROR,
        "Unrecognized mount option \"%s\" "
        "or missing value\n", p);
   status = 0;
   goto bail;
  }
 }

 if (user_stack == 0) {

  tmp = mopt->mount_opt & (OCFS2_MOUNT_HB_LOCAL |
      OCFS2_MOUNT_HB_GLOBAL |
      OCFS2_MOUNT_HB_NONE);
  if (hweight32(tmp) != 1) {
   mlog(ML_ERROR, "Invalid heartbeat mount options\n");
   status = 0;
   goto bail;
  }
 }

 status = 1;

bail:
 return status;
}
