
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 size_t MAX_RW_COUNT ;
 int do_splice_direct (struct file*,int *,struct file*,int *,size_t,int ) ;

ssize_t generic_copy_file_range(struct file *file_in, loff_t pos_in,
    struct file *file_out, loff_t pos_out,
    size_t len, unsigned int flags)
{
 return do_splice_direct(file_in, &pos_in, file_out, &pos_out,
    len > MAX_RW_COUNT ? MAX_RW_COUNT : len, 0);
}
