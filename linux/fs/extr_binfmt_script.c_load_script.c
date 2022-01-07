
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {char* buf; int interp_flags; char const* interp; struct file* file; int argc; } ;
struct file {int dummy; } ;


 int BINPRM_FLAGS_PATH_INACCESSIBLE ;
 int ENOENT ;
 int ENOEXEC ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int allow_write_access (struct file*) ;
 int bprm_change_interp (char const*,struct linux_binprm*) ;
 int copy_strings_kernel (int,char const**,struct linux_binprm*) ;
 int fput (struct file*) ;
 char* next_non_spacetab (char*,char*) ;
 int next_terminator (char*,char*) ;
 struct file* open_exec (char const*) ;
 int prepare_binprm (struct linux_binprm*) ;
 int remove_arg_zero (struct linux_binprm*) ;
 int search_binary_handler (struct linux_binprm*) ;
 char* strnchr (char*,int,char) ;

__attribute__((used)) static int load_script(struct linux_binprm *bprm)
{
 const char *i_arg, *i_name;
 char *cp, *buf_end;
 struct file *file;
 int retval;


 if ((bprm->buf[0] != '#') || (bprm->buf[1] != '!'))
  return -ENOEXEC;







 if (bprm->interp_flags & BINPRM_FLAGS_PATH_INACCESSIBLE)
  return -ENOENT;


 allow_write_access(bprm->file);
 fput(bprm->file);
 bprm->file = ((void*)0);
 buf_end = bprm->buf + sizeof(bprm->buf) - 1;
 cp = strnchr(bprm->buf, sizeof(bprm->buf), '\n');
 if (!cp) {
  cp = next_non_spacetab(bprm->buf + 2, buf_end);
  if (!cp)
   return -ENOEXEC;




  if (!next_terminator(cp, buf_end))
   return -ENOEXEC;
  cp = buf_end;
 }

 *cp = '\0';
 while (cp > bprm->buf) {
  cp--;
  if ((*cp == ' ') || (*cp == '\t'))
   *cp = '\0';
  else
   break;
 }
 for (cp = bprm->buf+2; (*cp == ' ') || (*cp == '\t'); cp++);
 if (*cp == '\0')
  return -ENOEXEC;
 i_name = cp;
 i_arg = ((void*)0);
 for ( ; *cp && (*cp != ' ') && (*cp != '\t'); cp++)
                ;
 while ((*cp == ' ') || (*cp == '\t'))
  *cp++ = '\0';
 if (*cp)
  i_arg = cp;
 retval = remove_arg_zero(bprm);
 if (retval)
  return retval;
 retval = copy_strings_kernel(1, &bprm->interp, bprm);
 if (retval < 0)
  return retval;
 bprm->argc++;
 if (i_arg) {
  retval = copy_strings_kernel(1, &i_arg, bprm);
  if (retval < 0)
   return retval;
  bprm->argc++;
 }
 retval = copy_strings_kernel(1, &i_name, bprm);
 if (retval)
  return retval;
 bprm->argc++;
 retval = bprm_change_interp(i_name, bprm);
 if (retval < 0)
  return retval;




 file = open_exec(i_name);
 if (IS_ERR(file))
  return PTR_ERR(file);

 bprm->file = file;
 retval = prepare_binprm(bprm);
 if (retval < 0)
  return retval;
 return search_binary_handler(bprm);
}
