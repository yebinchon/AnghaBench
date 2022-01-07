
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tomoyo_request_info {struct tomoyo_execve* ee; struct tomoyo_obj_info* obj; } ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_obj_info {int validate_done; struct tomoyo_mini_stat* stat; int * stat_valid; struct tomoyo_path_info* symlink_target; } ;
struct tomoyo_number_union {unsigned long* values; scalar_t__ group; } ;
struct tomoyo_name_union {int dummy; } ;
struct tomoyo_mini_stat {unsigned long ino; unsigned long mode; int rdev; int dev; int gid; int uid; } ;
struct tomoyo_execve {struct linux_binprm* bprm; } ;
struct tomoyo_envp {int dummy; } ;
struct tomoyo_condition_element {int equals; int left; int right; } ;
struct tomoyo_condition {int condc; int argc; int envc; int numbers_count; int names_count; } ;
struct tomoyo_argv {int dummy; } ;
struct linux_binprm {unsigned long argc; unsigned long envc; struct file* file; } ;
struct file {int dummy; } ;


 unsigned long MAJOR (int ) ;
 unsigned long MINOR (int ) ;
 unsigned long S_IALLUGO ;
 unsigned long S_IFBLK ;
 unsigned long S_IFCHR ;
 unsigned long S_IFDIR ;
 unsigned long S_IFIFO ;
 unsigned long S_IFLNK ;
 unsigned long S_IFMT ;
 unsigned long S_IFREG ;
 unsigned long S_IFSOCK ;
 unsigned long S_ISGID ;
 unsigned long S_ISUID ;
 unsigned long S_ISVTX ;
 int const TOMOYO_ARGV_ENTRY ;
 int const TOMOYO_ENVP_ENTRY ;
 int const TOMOYO_NAME_UNION ;

 int TOMOYO_PATH1 ;






 int TOMOYO_PATH1_PARENT ;







 int TOMOYO_PATH2 ;






 int TOMOYO_PATH2_PARENT ;
 int current_egid () ;
 int current_euid () ;
 int current_fsgid () ;
 int current_fsuid () ;
 int current_gid () ;
 int current_sgid () ;
 int current_suid () ;
 int current_uid () ;
 unsigned long from_kgid (int *,int ) ;
 unsigned long from_kuid (int *,int ) ;
 int init_user_ns ;
 int tomoyo_compare_name_union (struct tomoyo_path_info*,struct tomoyo_name_union const*) ;
 int tomoyo_get_attributes (struct tomoyo_obj_info*) ;
 int const tomoyo_number_matches_group (unsigned long,unsigned long,scalar_t__) ;
 int tomoyo_scan_bprm (struct tomoyo_execve*,int,struct tomoyo_argv const*,int,struct tomoyo_envp const*) ;
 int tomoyo_scan_exec_realpath (struct file*,struct tomoyo_name_union const*,int const) ;
 unsigned long tomoyo_sys_getpid () ;
 unsigned long tomoyo_sys_getppid () ;

bool tomoyo_condition(struct tomoyo_request_info *r,
        const struct tomoyo_condition *cond)
{
 u32 i;
 unsigned long min_v[2] = { 0, 0 };
 unsigned long max_v[2] = { 0, 0 };
 const struct tomoyo_condition_element *condp;
 const struct tomoyo_number_union *numbers_p;
 const struct tomoyo_name_union *names_p;
 const struct tomoyo_argv *argv;
 const struct tomoyo_envp *envp;
 struct tomoyo_obj_info *obj;
 u16 condc;
 u16 argc;
 u16 envc;
 struct linux_binprm *bprm = ((void*)0);

 if (!cond)
  return 1;
 condc = cond->condc;
 argc = cond->argc;
 envc = cond->envc;
 obj = r->obj;
 if (r->ee)
  bprm = r->ee->bprm;
 if (!bprm && (argc || envc))
  return 0;
 condp = (struct tomoyo_condition_element *) (cond + 1);
 numbers_p = (const struct tomoyo_number_union *) (condp + condc);
 names_p = (const struct tomoyo_name_union *)
  (numbers_p + cond->numbers_count);
 argv = (const struct tomoyo_argv *) (names_p + cond->names_count);
 envp = (const struct tomoyo_envp *) (argv + argc);
 for (i = 0; i < condc; i++) {
  const bool match = condp->equals;
  const u8 left = condp->left;
  const u8 right = condp->right;
  bool is_bitop[2] = { 0, 0 };
  u8 j;

  condp++;

  if (left == TOMOYO_ARGV_ENTRY || left == TOMOYO_ENVP_ENTRY)
   continue;

  if (right == TOMOYO_NAME_UNION) {
   const struct tomoyo_name_union *ptr = names_p++;
   struct tomoyo_path_info *symlink;
   struct tomoyo_execve *ee;
   struct file *file;

   switch (left) {
   case 145:
    symlink = obj ? obj->symlink_target : ((void*)0);
    if (!symlink ||
        !tomoyo_compare_name_union(symlink, ptr)
        == match)
     goto out;
    break;
   case 185:
    ee = r->ee;
    file = ee ? ee->bprm->file : ((void*)0);
    if (!tomoyo_scan_exec_realpath(file, ptr,
              match))
     goto out;
    break;
   }
   continue;
  }

  for (j = 0; j < 2; j++) {
   const u8 index = j ? right : left;
   unsigned long value = 0;

   switch (index) {
   case 135:
    value = from_kuid(&init_user_ns, current_uid());
    break;
   case 143:
    value = from_kuid(&init_user_ns, current_euid());
    break;
   case 136:
    value = from_kuid(&init_user_ns, current_suid());
    break;
   case 141:
    value = from_kuid(&init_user_ns, current_fsuid());
    break;
   case 140:
    value = from_kgid(&init_user_ns, current_gid());
    break;
   case 144:
    value = from_kgid(&init_user_ns, current_egid());
    break;
   case 137:
    value = from_kgid(&init_user_ns, current_sgid());
    break;
   case 142:
    value = from_kgid(&init_user_ns, current_fsgid());
    break;
   case 139:
    value = tomoyo_sys_getpid();
    break;
   case 138:
    value = tomoyo_sys_getppid();
    break;
   case 129:
    value = S_IFSOCK;
    break;
   case 128:
    value = S_IFLNK;
    break;
   case 130:
    value = S_IFREG;
    break;
   case 134:
    value = S_IFBLK;
    break;
   case 132:
    value = S_IFDIR;
    break;
   case 133:
    value = S_IFCHR;
    break;
   case 131:
    value = S_IFIFO;
    break;
   case 174:
    value = S_ISUID;
    break;
   case 175:
    value = S_ISGID;
    break;
   case 173:
    value = S_ISVTX;
    break;
   case 177:
    value = 0400;
    break;
   case 176:
    value = 0200;
    break;
   case 178:
    value = 0100;
    break;
   case 183:
    value = 0040;
    break;
   case 182:
    value = 0020;
    break;
   case 184:
    value = 0010;
    break;
   case 180:
    value = 0004;
    break;
   case 179:
    value = 0002;
    break;
   case 181:
    value = 0001;
    break;
   case 187:
    if (!bprm)
     goto out;
    value = bprm->argc;
    break;
   case 186:
    if (!bprm)
     goto out;
    value = bprm->envc;
    break;
   case 172:

    break;
   default:
    if (!obj)
     goto out;
    if (!obj->validate_done) {
     tomoyo_get_attributes(obj);
     obj->validate_done = 1;
    }
    {
     u8 stat_index;
     struct tomoyo_mini_stat *stat;

     switch (index) {
     case 159:
     case 169:
     case 168:
     case 167:
     case 166:
     case 160:
     case 171:
     case 170:
     case 161:
      stat_index = TOMOYO_PATH1;
      break;
     case 146:
     case 156:
     case 155:
     case 154:
     case 153:
     case 147:
     case 158:
     case 157:
     case 148:
      stat_index = TOMOYO_PATH2;
      break;
     case 162:
     case 165:
     case 164:
     case 163:
      stat_index =
       TOMOYO_PATH1_PARENT;
      break;
     case 149:
     case 152:
     case 151:
     case 150:
      stat_index =
       TOMOYO_PATH2_PARENT;
      break;
     default:
      goto out;
     }
     if (!obj->stat_valid[stat_index])
      goto out;
     stat = &obj->stat[stat_index];
     switch (index) {
     case 159:
     case 146:
     case 162:
     case 149:
      value = from_kuid(&init_user_ns, stat->uid);
      break;
     case 169:
     case 156:
     case 165:
     case 152:
      value = from_kgid(&init_user_ns, stat->gid);
      break;
     case 168:
     case 155:
     case 164:
     case 151:
      value = stat->ino;
      break;
     case 167:
     case 154:
      value = MAJOR(stat->dev);
      break;
     case 166:
     case 153:
      value = MINOR(stat->dev);
      break;
     case 160:
     case 147:
      value = stat->mode & S_IFMT;
      break;
     case 171:
     case 158:
      value = MAJOR(stat->rdev);
      break;
     case 170:
     case 157:
      value = MINOR(stat->rdev);
      break;
     case 161:
     case 148:
     case 163:
     case 150:
      value = stat->mode & S_IALLUGO;
      break;
     }
    }
    break;
   }
   max_v[j] = value;
   min_v[j] = value;
   switch (index) {
   case 174:
   case 175:
   case 173:
   case 177:
   case 176:
   case 178:
   case 183:
   case 182:
   case 184:
   case 180:
   case 179:
   case 181:
    is_bitop[j] = 1;
   }
  }
  if (left == 172) {

   const struct tomoyo_number_union *ptr = numbers_p++;

   min_v[0] = ptr->values[0];
   max_v[0] = ptr->values[1];
  }
  if (right == 172) {

   const struct tomoyo_number_union *ptr = numbers_p++;

   if (ptr->group) {
    if (tomoyo_number_matches_group(min_v[0],
        max_v[0],
        ptr->group)
        == match)
     continue;
   } else {
    if ((min_v[0] <= ptr->values[1] &&
         max_v[0] >= ptr->values[0]) == match)
     continue;
   }
   goto out;
  }




  if (is_bitop[0] && is_bitop[1]) {
   goto out;
  } else if (is_bitop[0]) {
   switch (right) {
   case 161:
   case 163:
   case 148:
   case 150:
    if (!(max_v[0] & max_v[1]) == !match)
     continue;
   }
   goto out;
  } else if (is_bitop[1]) {
   switch (left) {
   case 161:
   case 163:
   case 148:
   case 150:
    if (!(max_v[0] & max_v[1]) == !match)
     continue;
   }
   goto out;
  }

  if ((min_v[0] <= max_v[1] && max_v[0] >= min_v[1]) == match)
   continue;
out:
  return 0;
 }

 if (r->ee && (argc || envc))
  return tomoyo_scan_bprm(r->ee, argc, argv, envc, envp);
 return 1;
}
