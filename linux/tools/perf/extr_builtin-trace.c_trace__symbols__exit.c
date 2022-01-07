
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int * host; } ;


 int machine__exit (int *) ;
 int symbol__exit () ;

__attribute__((used)) static void trace__symbols__exit(struct trace *trace)
{
 machine__exit(trace->host);
 trace->host = ((void*)0);

 symbol__exit();
}
