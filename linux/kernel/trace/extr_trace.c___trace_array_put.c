
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int ref; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void __trace_array_put(struct trace_array *this_tr)
{
 WARN_ON(!this_tr->ref);
 this_tr->ref--;
}
