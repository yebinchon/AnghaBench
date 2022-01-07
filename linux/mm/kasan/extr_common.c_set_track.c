
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kasan_track {int stack; int pid; } ;
typedef int gfp_t ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int save_stack (int ) ;

__attribute__((used)) static inline void set_track(struct kasan_track *track, gfp_t flags)
{
 track->pid = current->pid;
 track->stack = save_stack(flags);
}
