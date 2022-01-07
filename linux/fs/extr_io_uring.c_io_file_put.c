
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_submit_state {int has_refs; int used_refs; int * file; } ;


 int fput_many (int *,int) ;

__attribute__((used)) static void io_file_put(struct io_submit_state *state)
{
 if (state->file) {
  int diff = state->has_refs - state->used_refs;

  if (diff)
   fput_many(state->file, diff);
  state->file = ((void*)0);
 }
}
