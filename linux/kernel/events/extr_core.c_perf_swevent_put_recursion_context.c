
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swevent_htable {int recursion; } ;


 int put_recursion_context (int ,int) ;
 int swevent_htable ;
 struct swevent_htable* this_cpu_ptr (int *) ;

void perf_swevent_put_recursion_context(int rctx)
{
 struct swevent_htable *swhash = this_cpu_ptr(&swevent_htable);

 put_recursion_context(swhash->recursion, rctx);
}
