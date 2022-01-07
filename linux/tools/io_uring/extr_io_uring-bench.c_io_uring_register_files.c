
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct submitter {unsigned int nr_files; int * fds; int ring_fd; TYPE_1__* files; } ;
typedef int __s32 ;
struct TYPE_2__ {unsigned int fixed_fd; int real_fd; } ;


 int IORING_REGISTER_FILES ;
 int * calloc (unsigned int,int) ;
 scalar_t__ do_nop ;
 int io_uring_register (int ,int ,int *,unsigned int) ;

__attribute__((used)) static int io_uring_register_files(struct submitter *s)
{
 unsigned i;

 if (do_nop)
  return 0;

 s->fds = calloc(s->nr_files, sizeof(__s32));
 for (i = 0; i < s->nr_files; i++) {
  s->fds[i] = s->files[i].real_fd;
  s->files[i].fixed_fd = i;
 }

 return io_uring_register(s->ring_fd, IORING_REGISTER_FILES, s->fds,
     s->nr_files);
}
