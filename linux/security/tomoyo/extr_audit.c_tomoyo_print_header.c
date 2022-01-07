
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef size_t u8 ;
struct tomoyo_time {int year; int month; int day; int hour; int min; int sec; } ;
struct tomoyo_request_info {int profile; size_t mode; int granted; struct tomoyo_obj_info* obj; } ;
struct tomoyo_obj_info {int validate_done; struct tomoyo_mini_stat* stat; int * stat_valid; } ;
struct tomoyo_mini_stat {unsigned int dev; int mode; unsigned int rdev; int gid; int uid; scalar_t__ ino; } ;
typedef int pid_t ;


 int GFP_NOFS ;
 int MAJOR (unsigned int) ;
 int MINOR (unsigned int) ;
 int S_IALLUGO ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 size_t TOMOYO_MAX_PATH_STAT ;
 int current ;
 int current_egid () ;
 int current_euid () ;
 int current_fsgid () ;
 int current_fsuid () ;
 int current_gid () ;
 int current_sgid () ;
 int current_suid () ;
 int current_uid () ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int kfree (char*) ;
 char* kmalloc (int const,int ) ;
 int ktime_get_real_seconds () ;
 int snprintf (char*,int const,char*,...) ;
 int task_pid_nr (int ) ;
 int tomoyo_convert_time (int ,struct tomoyo_time*) ;
 int tomoyo_filetype (int) ;
 int tomoyo_get_attributes (struct tomoyo_obj_info*) ;
 char** tomoyo_mode ;
 int tomoyo_sys_getpid () ;
 int tomoyo_sys_getppid () ;
 char* tomoyo_yesno (int ) ;

__attribute__((used)) static char *tomoyo_print_header(struct tomoyo_request_info *r)
{
 struct tomoyo_time stamp;
 const pid_t gpid = task_pid_nr(current);
 struct tomoyo_obj_info *obj = r->obj;
 static const int tomoyo_buffer_len = 4096;
 char *buffer = kmalloc(tomoyo_buffer_len, GFP_NOFS);
 int pos;
 u8 i;

 if (!buffer)
  return ((void*)0);

 tomoyo_convert_time(ktime_get_real_seconds(), &stamp);

 pos = snprintf(buffer, tomoyo_buffer_len - 1,
         "#%04u/%02u/%02u %02u:%02u:%02u# profile=%u mode=%s granted=%s (global-pid=%u) task={ pid=%u ppid=%u uid=%u gid=%u euid=%u egid=%u suid=%u sgid=%u fsuid=%u fsgid=%u }",
         stamp.year, stamp.month, stamp.day, stamp.hour,
         stamp.min, stamp.sec, r->profile, tomoyo_mode[r->mode],
         tomoyo_yesno(r->granted), gpid, tomoyo_sys_getpid(),
         tomoyo_sys_getppid(),
         from_kuid(&init_user_ns, current_uid()),
         from_kgid(&init_user_ns, current_gid()),
         from_kuid(&init_user_ns, current_euid()),
         from_kgid(&init_user_ns, current_egid()),
         from_kuid(&init_user_ns, current_suid()),
         from_kgid(&init_user_ns, current_sgid()),
         from_kuid(&init_user_ns, current_fsuid()),
         from_kgid(&init_user_ns, current_fsgid()));
 if (!obj)
  goto no_obj_info;
 if (!obj->validate_done) {
  tomoyo_get_attributes(obj);
  obj->validate_done = 1;
 }
 for (i = 0; i < TOMOYO_MAX_PATH_STAT; i++) {
  struct tomoyo_mini_stat *stat;
  unsigned int dev;
  umode_t mode;

  if (!obj->stat_valid[i])
   continue;
  stat = &obj->stat[i];
  dev = stat->dev;
  mode = stat->mode;
  if (i & 1) {
   pos += snprintf(buffer + pos,
     tomoyo_buffer_len - 1 - pos,
     " path%u.parent={ uid=%u gid=%u ino=%lu perm=0%o }",
     (i >> 1) + 1,
     from_kuid(&init_user_ns, stat->uid),
     from_kgid(&init_user_ns, stat->gid),
     (unsigned long)stat->ino,
     stat->mode & S_IALLUGO);
   continue;
  }
  pos += snprintf(buffer + pos, tomoyo_buffer_len - 1 - pos,
    " path%u={ uid=%u gid=%u ino=%lu major=%u minor=%u perm=0%o type=%s",
    (i >> 1) + 1,
    from_kuid(&init_user_ns, stat->uid),
    from_kgid(&init_user_ns, stat->gid),
    (unsigned long)stat->ino,
    MAJOR(dev), MINOR(dev),
    mode & S_IALLUGO, tomoyo_filetype(mode));
  if (S_ISCHR(mode) || S_ISBLK(mode)) {
   dev = stat->rdev;
   pos += snprintf(buffer + pos,
     tomoyo_buffer_len - 1 - pos,
     " dev_major=%u dev_minor=%u",
     MAJOR(dev), MINOR(dev));
  }
  pos += snprintf(buffer + pos, tomoyo_buffer_len - 1 - pos,
    " }");
 }
no_obj_info:
 if (pos < tomoyo_buffer_len - 1)
  return buffer;
 kfree(buffer);
 return ((void*)0);
}
