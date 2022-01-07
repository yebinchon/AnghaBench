
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct file {int f_path; } ;


 int seq_path (struct seq_file*,int *,char const*) ;

int seq_file_path(struct seq_file *m, struct file *file, const char *esc)
{
 return seq_path(m, &file->f_path, esc);
}
