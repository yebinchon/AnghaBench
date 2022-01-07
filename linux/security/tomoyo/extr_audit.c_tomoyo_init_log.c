
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
struct tomoyo_request_info {TYPE_5__* ee; TYPE_4__* obj; TYPE_2__* domain; } ;
struct linux_binprm {int argc; int envc; struct file* file; } ;
struct file {int f_path; } ;
struct TYPE_10__ {struct linux_binprm* bprm; int dump; } ;
struct TYPE_9__ {TYPE_3__* symlink_target; } ;
struct TYPE_8__ {char* name; } ;
struct TYPE_7__ {TYPE_1__* domainname; } ;
struct TYPE_6__ {char* name; } ;


 int GFP_NOFS ;
 int kfree (char const*) ;
 char* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,char const*,...) ;
 scalar_t__ strlen (char const*) ;
 char* tomoyo_print_bprm (struct linux_binprm*,int *) ;
 char* tomoyo_print_header (struct tomoyo_request_info*) ;
 char* tomoyo_realpath_from_path (int *) ;
 int tomoyo_round2 (int) ;
 int vsnprintf (char*,int,char const*,int ) ;

char *tomoyo_init_log(struct tomoyo_request_info *r, int len, const char *fmt,
        va_list args)
{
 char *buf = ((void*)0);
 char *bprm_info = ((void*)0);
 const char *header = ((void*)0);
 char *realpath = ((void*)0);
 const char *symlink = ((void*)0);
 int pos;
 const char *domainname = r->domain->domainname->name;

 header = tomoyo_print_header(r);
 if (!header)
  return ((void*)0);

 len += strlen(domainname) + strlen(header) + 10;
 if (r->ee) {
  struct file *file = r->ee->bprm->file;

  realpath = tomoyo_realpath_from_path(&file->f_path);
  bprm_info = tomoyo_print_bprm(r->ee->bprm, &r->ee->dump);
  if (!realpath || !bprm_info)
   goto out;

  len += strlen(realpath) + 80 + strlen(bprm_info);
 } else if (r->obj && r->obj->symlink_target) {
  symlink = r->obj->symlink_target->name;

  len += 18 + strlen(symlink);
 }
 len = tomoyo_round2(len);
 buf = kzalloc(len, GFP_NOFS);
 if (!buf)
  goto out;
 len--;
 pos = snprintf(buf, len, "%s", header);
 if (realpath) {
  struct linux_binprm *bprm = r->ee->bprm;

  pos += snprintf(buf + pos, len - pos,
    " exec={ realpath=\"%s\" argc=%d envc=%d %s }",
    realpath, bprm->argc, bprm->envc, bprm_info);
 } else if (symlink)
  pos += snprintf(buf + pos, len - pos, " symlink.target=\"%s\"",
    symlink);
 pos += snprintf(buf + pos, len - pos, "\n%s\n", domainname);
 vsnprintf(buf + pos, len - pos, fmt, args);
out:
 kfree(realpath);
 kfree(bprm_info);
 kfree(header);
 return buf;
}
