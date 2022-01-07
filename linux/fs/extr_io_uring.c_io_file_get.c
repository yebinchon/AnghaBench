
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_submit_state {int fd; int used_refs; struct file* file; int ios_left; int has_refs; } ;
struct file {int dummy; } ;


 struct file* fget (int) ;
 struct file* fget_many (int,int ) ;
 int io_file_put (struct io_submit_state*) ;

__attribute__((used)) static struct file *io_file_get(struct io_submit_state *state, int fd)
{
 if (!state)
  return fget(fd);

 if (state->file) {
  if (state->fd == fd) {
   state->used_refs++;
   state->ios_left--;
   return state->file;
  }
  io_file_put(state);
 }
 state->file = fget_many(fd, state->ios_left);
 if (!state->file)
  return ((void*)0);

 state->fd = fd;
 state->has_refs = state->ios_left;
 state->used_refs = 1;
 state->ios_left--;
 return state->file;
}
