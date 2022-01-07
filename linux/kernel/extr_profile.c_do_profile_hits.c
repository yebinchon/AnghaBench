
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _stext ;
 int atomic_add (unsigned int,int *) ;
 size_t min (unsigned long,scalar_t__) ;
 int * prof_buffer ;
 scalar_t__ prof_len ;
 unsigned long prof_shift ;

__attribute__((used)) static void do_profile_hits(int type, void *__pc, unsigned int nr_hits)
{
 unsigned long pc;
 pc = ((unsigned long)__pc - (unsigned long)_stext) >> prof_shift;
 atomic_add(nr_hits, &prof_buffer[min(pc, prof_len - 1)]);
}
