
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_trace {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int st_rdev; } ;
struct file {scalar_t__ pathname; int dev_maj; } ;


 int major (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strdup (char const*) ;
 struct thread_trace* thread__priv (struct thread*) ;
 struct file* thread_trace__files_entry (struct thread_trace*,int) ;

__attribute__((used)) static int trace__set_fd_pathname(struct thread *thread, int fd, const char *pathname)
{
 struct thread_trace *ttrace = thread__priv(thread);
 struct file *file = thread_trace__files_entry(ttrace, fd);

 if (file != ((void*)0)) {
  struct stat st;
  if (stat(pathname, &st) == 0)
   file->dev_maj = major(st.st_rdev);
  file->pathname = strdup(pathname);
  if (file->pathname)
   return 0;
 }

 return -1;
}
