
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int atomic_flags; } ;
struct inode {int i_readcount; } ;
struct file {int f_mode; int f_path; } ;
typedef int fmode_t ;


 int FMODE_WRITE ;
 int IMA_MUST_MEASURE ;
 scalar_t__ IS_IMA (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 struct inode* file_inode (struct file*) ;
 int ima_add_violation (struct file*,char const*,struct integrity_iint_cache*,char*,char*) ;
 char* ima_d_path (int *,char**,char*) ;
 scalar_t__ inode_is_open_for_write (struct inode*) ;
 struct integrity_iint_cache* integrity_iint_find (struct inode*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ima_rdwr_violation_check(struct file *file,
         struct integrity_iint_cache *iint,
         int must_measure,
         char **pathbuf,
         const char **pathname,
         char *filename)
{
 struct inode *inode = file_inode(file);
 fmode_t mode = file->f_mode;
 bool send_tomtou = 0, send_writers = 0;

 if (mode & FMODE_WRITE) {
  if (atomic_read(&inode->i_readcount) && IS_IMA(inode)) {
   if (!iint)
    iint = integrity_iint_find(inode);

   if (iint && test_bit(IMA_MUST_MEASURE,
      &iint->atomic_flags))
    send_tomtou = 1;
  }
 } else {
  if (must_measure)
   set_bit(IMA_MUST_MEASURE, &iint->atomic_flags);
  if (inode_is_open_for_write(inode) && must_measure)
   send_writers = 1;
 }

 if (!send_tomtou && !send_writers)
  return;

 *pathname = ima_d_path(&file->f_path, pathbuf, filename);

 if (send_tomtou)
  ima_add_violation(file, *pathname, iint,
      "invalid_pcr", "ToMToU");
 if (send_writers)
  ima_add_violation(file, *pathname, iint,
      "invalid_pcr", "open_writers");
}
