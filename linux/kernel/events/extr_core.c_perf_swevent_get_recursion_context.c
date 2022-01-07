
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swevent_htable {int recursion; } ;


 int get_recursion_context (int ) ;
 int swevent_htable ;
 struct swevent_htable* this_cpu_ptr (int *) ;

int perf_swevent_get_recursion_context(void)
{
 struct swevent_htable *swhash = this_cpu_ptr(&swevent_htable);

 return get_recursion_context(swhash->recursion);
}
