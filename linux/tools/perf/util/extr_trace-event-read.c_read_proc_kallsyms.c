
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int SEEK_CUR ;
 int input_fd ;
 int lseek (int ,unsigned int,int ) ;
 unsigned int read4 (struct tep_handle*) ;
 unsigned int trace_data_size ;

__attribute__((used)) static int read_proc_kallsyms(struct tep_handle *pevent)
{
 unsigned int size;

 size = read4(pevent);
 if (!size)
  return 0;
 lseek(input_fd, size, SEEK_CUR);
 trace_data_size += size;
 return 0;
}
