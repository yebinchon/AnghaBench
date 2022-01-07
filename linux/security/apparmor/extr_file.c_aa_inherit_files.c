
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_struct {int dummy; } ;
struct file {int dummy; } ;
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_RDWR ;
 struct aa_label* aa_get_newest_cred_label (struct cred const*) ;
 int aa_null ;
 int aa_put_label (struct aa_label*) ;
 struct file* dentry_open (int *,int ,struct cred const*) ;
 int fput (struct file*) ;
 unsigned int iterate_fd (struct files_struct*,unsigned int,int ,struct aa_label*) ;
 int match_file ;
 int replace_fd (unsigned int,struct file*,int ) ;
 int revalidate_tty (struct aa_label*) ;

void aa_inherit_files(const struct cred *cred, struct files_struct *files)
{
 struct aa_label *label = aa_get_newest_cred_label(cred);
 struct file *devnull = ((void*)0);
 unsigned int n;

 revalidate_tty(label);


 n = iterate_fd(files, 0, match_file, label);
 if (!n)
  goto out;

 devnull = dentry_open(&aa_null, O_RDWR, cred);
 if (IS_ERR(devnull))
  devnull = ((void*)0);

 do {
  replace_fd(n - 1, devnull, 0);
 } while ((n = iterate_fd(files, n, match_file, label)) != 0);
 if (devnull)
  fput(devnull);
out:
 aa_put_label(label);
}
