
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_path; int f_mapping; } ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int AUDIT_INTEGRITY_DATA ;
 int ETXTBSY ;
 int MMAP_CHECK ;
 struct inode* file_inode (struct file*) ;
 char* ima_d_path (int *,char**,char*) ;
 int integrity_audit_msg (int ,struct inode*,char const*,char*,char*,int,int ) ;
 scalar_t__ mapping_writably_mapped (int ) ;

__attribute__((used)) static int mmap_violation_check(enum ima_hooks func, struct file *file,
    char **pathbuf, const char **pathname,
    char *filename)
{
 struct inode *inode;
 int rc = 0;

 if ((func == MMAP_CHECK) && mapping_writably_mapped(file->f_mapping)) {
  rc = -ETXTBSY;
  inode = file_inode(file);

  if (!*pathbuf)
   *pathname = ima_d_path(&file->f_path, pathbuf,
            filename);
  integrity_audit_msg(AUDIT_INTEGRITY_DATA, inode, *pathname,
        "mmap_file", "mmapped_writers", rc, 0);
 }
 return rc;
}
