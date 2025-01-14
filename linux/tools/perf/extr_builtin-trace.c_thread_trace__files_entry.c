
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; struct file* table; } ;
struct thread_trace {TYPE_1__ files; } ;
struct file {int dummy; } ;


 int memset (struct file*,int ,int) ;
 struct file* realloc (struct file*,int) ;

__attribute__((used)) static struct file *thread_trace__files_entry(struct thread_trace *ttrace, int fd)
{
 if (fd < 0)
  return ((void*)0);

 if (fd > ttrace->files.max) {
  struct file *nfiles = realloc(ttrace->files.table, (fd + 1) * sizeof(struct file));

  if (nfiles == ((void*)0))
   return ((void*)0);

  if (ttrace->files.max != -1) {
   memset(nfiles + ttrace->files.max + 1, 0,
          (fd - ttrace->files.max) * sizeof(struct file));
  } else {
   memset(nfiles, 0, (fd + 1) * sizeof(struct file));
  }

  ttrace->files.table = nfiles;
  ttrace->files.max = fd;
 }

 return ttrace->files.table + fd;
}
