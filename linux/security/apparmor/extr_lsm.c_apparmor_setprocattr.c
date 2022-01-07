
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* info; int error; int label; } ;


 int AA_CHANGE_NOFLAGS ;
 int AA_CHANGE_ONEXEC ;
 int AA_CHANGE_STACK ;
 int AA_CHANGE_TEST ;
 int AUDIT_APPARMOR_DENIED ;
 int DEFINE_AUDIT_DATA (int ,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LSM_AUDIT_DATA_NONE ;
 int OP_SETPROCATTR ;
 int aa_audit_msg (int ,int *,int *) ;
 int aa_change_profile (char*,int) ;
 int aa_setprocattr_changehat (char*,size_t,int) ;
 TYPE_1__* aad (int *) ;
 int begin_current_label_crit_section () ;
 int end_current_label_crit_section (int ) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,void*,size_t) ;
 int sa ;
 char* skip_spaces (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strim (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int apparmor_setprocattr(const char *name, void *value,
    size_t size)
{
 char *command, *largs = ((void*)0), *args = value;
 size_t arg_size;
 int error;
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_NONE, OP_SETPROCATTR);

 if (size == 0)
  return -EINVAL;


 if (args[size - 1] != '\0') {

  largs = args = kmalloc(size + 1, GFP_KERNEL);
  if (!args)
   return -ENOMEM;
  memcpy(args, value, size);
  args[size] = '\0';
 }

 error = -EINVAL;
 args = strim(args);
 command = strsep(&args, " ");
 if (!args)
  goto out;
 args = skip_spaces(args);
 if (!*args)
  goto out;

 arg_size = size - (args - (largs ? largs : (char *) value));
 if (strcmp(name, "current") == 0) {
  if (strcmp(command, "changehat") == 0) {
   error = aa_setprocattr_changehat(args, arg_size,
        AA_CHANGE_NOFLAGS);
  } else if (strcmp(command, "permhat") == 0) {
   error = aa_setprocattr_changehat(args, arg_size,
        AA_CHANGE_TEST);
  } else if (strcmp(command, "changeprofile") == 0) {
   error = aa_change_profile(args, AA_CHANGE_NOFLAGS);
  } else if (strcmp(command, "permprofile") == 0) {
   error = aa_change_profile(args, AA_CHANGE_TEST);
  } else if (strcmp(command, "stack") == 0) {
   error = aa_change_profile(args, AA_CHANGE_STACK);
  } else
   goto fail;
 } else if (strcmp(name, "exec") == 0) {
  if (strcmp(command, "exec") == 0)
   error = aa_change_profile(args, AA_CHANGE_ONEXEC);
  else if (strcmp(command, "stack") == 0)
   error = aa_change_profile(args, (AA_CHANGE_ONEXEC |
        AA_CHANGE_STACK));
  else
   goto fail;
 } else

  goto fail;

 if (!error)
  error = size;
out:
 kfree(largs);
 return error;

fail:
 aad(&sa)->label = begin_current_label_crit_section();
 aad(&sa)->info = name;
 aad(&sa)->error = error = -EINVAL;
 aa_audit_msg(AUDIT_APPARMOR_DENIED, &sa, ((void*)0));
 end_current_label_crit_section(aad(&sa)->label);
 goto out;
}
