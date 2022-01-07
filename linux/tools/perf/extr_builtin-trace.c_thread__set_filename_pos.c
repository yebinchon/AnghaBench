
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ptr; char const* entry_str_pos; } ;
struct thread_trace {int entry_str; TYPE_1__ filename; } ;
struct thread {int dummy; } ;


 struct thread_trace* thread__priv (struct thread*) ;

__attribute__((used)) static void thread__set_filename_pos(struct thread *thread, const char *bf,
         unsigned long ptr)
{
 struct thread_trace *ttrace = thread__priv(thread);

 ttrace->filename.ptr = ptr;
 ttrace->filename.entry_str_pos = bf - ttrace->entry_str;
}
