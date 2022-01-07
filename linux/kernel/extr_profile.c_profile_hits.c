
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_profile_hits (int,void*,unsigned int) ;
 int prof_buffer ;
 int prof_on ;

void profile_hits(int type, void *__pc, unsigned int nr_hits)
{
 if (prof_on != type || !prof_buffer)
  return;
 do_profile_hits(type, __pc, nr_hits);
}
