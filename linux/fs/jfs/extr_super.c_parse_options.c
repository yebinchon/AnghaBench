
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {char* from; } ;
typedef TYPE_1__ substring_t ;
struct super_block {scalar_t__ s_blocksize_bits; TYPE_3__* s_bdev; } ;
struct request_queue {int dummy; } ;
struct jfs_sb_info {int umask; int minblks_trim; void* nls_tab; int gid; int uid; } ;
typedef scalar_t__ s64 ;
typedef int gid_t ;
struct TYPE_5__ {int bd_inode; } ;


 int JFS_DISCARD ;
 int JFS_ERR_CONTINUE ;
 int JFS_ERR_PANIC ;
 int JFS_ERR_REMOUNT_RO ;
 int JFS_GRPQUOTA ;
 int JFS_NOINTEGRITY ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int JFS_USRQUOTA ;
 int MAX_OPT_ARGS ;
 struct request_queue* bdev_get_queue (TYPE_3__*) ;
 int blk_queue_discard (struct request_queue*) ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 scalar_t__ i_size_read (int ) ;
 int kstrtoll (char*,int ,scalar_t__*) ;
 int kstrtouint (char*,int,int*) ;
 void* load_nls (char*) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int pr_err (char*,...) ;
 int printk (char*,char*) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int uid_valid (int ) ;
 int unload_nls (void*) ;

__attribute__((used)) static int parse_options(char *options, struct super_block *sb, s64 *newLVSize,
    int *flag)
{
 void *nls_map = (void *)-1;
 char *p;
 struct jfs_sb_info *sbi = JFS_SBI(sb);

 *newLVSize = 0;

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 137:
   *flag &= ~JFS_NOINTEGRITY;
   break;
  case 134:
   *flag |= JFS_NOINTEGRITY;
   break;
  case 138:


   break;
  case 136:
   if (nls_map && nls_map != (void *) -1)
    unload_nls(nls_map);
   if (!strcmp(args[0].from, "none"))
    nls_map = ((void*)0);
   else {
    nls_map = load_nls(args[0].from);
    if (!nls_map) {
     pr_err("JFS: charset not found\n");
     goto cleanup;
    }
   }
   break;
  case 132:
  {
   char *resize = args[0].from;
   int rc = kstrtoll(resize, 0, newLVSize);

   if (rc)
    goto cleanup;
   break;
  }
  case 131:
  {
   *newLVSize = i_size_read(sb->s_bdev->bd_inode) >>
    sb->s_blocksize_bits;
   if (*newLVSize == 0)
    pr_err("JFS: Cannot determine volume size\n");
   break;
  }
  case 141:
  {
   char *errors = args[0].from;
   if (!errors || !*errors)
    goto cleanup;
   if (!strcmp(errors, "continue")) {
    *flag &= ~JFS_ERR_REMOUNT_RO;
    *flag &= ~JFS_ERR_PANIC;
    *flag |= JFS_ERR_CONTINUE;
   } else if (!strcmp(errors, "remount-ro")) {
    *flag &= ~JFS_ERR_CONTINUE;
    *flag &= ~JFS_ERR_PANIC;
    *flag |= JFS_ERR_REMOUNT_RO;
   } else if (!strcmp(errors, "panic")) {
    *flag &= ~JFS_ERR_CONTINUE;
    *flag &= ~JFS_ERR_REMOUNT_RO;
    *flag |= JFS_ERR_PANIC;
   } else {
    pr_err("JFS: %s is an invalid error handler\n",
           errors);
    goto cleanup;
   }
   break;
  }
  case 128:
  case 139:
  case 133:
   pr_err("JFS: quota operations not supported\n");
   break;

  case 130:
  {
   char *uid = args[0].from;
   uid_t val;
   int rc = kstrtouint(uid, 0, &val);

   if (rc)
    goto cleanup;
   sbi->uid = make_kuid(current_user_ns(), val);
   if (!uid_valid(sbi->uid))
    goto cleanup;
   break;
  }

  case 140:
  {
   char *gid = args[0].from;
   gid_t val;
   int rc = kstrtouint(gid, 0, &val);

   if (rc)
    goto cleanup;
   sbi->gid = make_kgid(current_user_ns(), val);
   if (!gid_valid(sbi->gid))
    goto cleanup;
   break;
  }

  case 129:
  {
   char *umask = args[0].from;
   int rc = kstrtouint(umask, 8, &sbi->umask);

   if (rc)
    goto cleanup;
   if (sbi->umask & ~0777) {
    pr_err("JFS: Invalid value of umask\n");
    goto cleanup;
   }
   break;
  }

  case 143:
  {
   struct request_queue *q = bdev_get_queue(sb->s_bdev);




   sbi->minblks_trim = 64;
   if (blk_queue_discard(q))
    *flag |= JFS_DISCARD;
   else
    pr_err("JFS: discard option not supported on device\n");
   break;
  }

  case 135:
   *flag &= ~JFS_DISCARD;
   break;

  case 142:
  {
   struct request_queue *q = bdev_get_queue(sb->s_bdev);
   char *minblks_trim = args[0].from;
   int rc;
   if (blk_queue_discard(q)) {
    *flag |= JFS_DISCARD;
    rc = kstrtouint(minblks_trim, 0,
      &sbi->minblks_trim);
    if (rc)
     goto cleanup;
   } else
    pr_err("JFS: discard option not supported on device\n");
   break;
  }

  default:
   printk("jfs: Unrecognized mount option \"%s\" or missing value\n",
          p);
   goto cleanup;
  }
 }

 if (nls_map != (void *) -1) {

  unload_nls(sbi->nls_tab);
  sbi->nls_tab = nls_map;
 }
 return 1;

cleanup:
 if (nls_map && nls_map != (void *) -1)
  unload_nls(nls_map);
 return 0;
}
