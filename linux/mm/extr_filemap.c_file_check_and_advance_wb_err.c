
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_lock; int f_wb_err; struct address_space* f_mapping; } ;
struct address_space {int flags; int wb_err; } ;
typedef int errseq_t ;


 int AS_EIO ;
 int AS_ENOSPC ;
 int READ_ONCE (int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ errseq_check (int *,int ) ;
 int errseq_check_and_advance (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_file_check_and_advance_wb_err (struct file*,int ) ;

int file_check_and_advance_wb_err(struct file *file)
{
 int err = 0;
 errseq_t old = READ_ONCE(file->f_wb_err);
 struct address_space *mapping = file->f_mapping;


 if (errseq_check(&mapping->wb_err, old)) {

  spin_lock(&file->f_lock);
  old = file->f_wb_err;
  err = errseq_check_and_advance(&mapping->wb_err,
      &file->f_wb_err);
  trace_file_check_and_advance_wb_err(file, old);
  spin_unlock(&file->f_lock);
 }






 clear_bit(AS_EIO, &mapping->flags);
 clear_bit(AS_ENOSPC, &mapping->flags);
 return err;
}
