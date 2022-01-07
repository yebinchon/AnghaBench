
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int dummy; } ;


 int thread__priv (struct thread*) ;
 struct file* thread_trace__files_entry (int ,int) ;

struct file *thread__files_entry(struct thread *thread, int fd)
{
 return thread_trace__files_entry(thread__priv(thread), fd);
}
