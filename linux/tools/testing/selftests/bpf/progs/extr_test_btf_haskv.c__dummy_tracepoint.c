
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_tracepoint_args {int dummy; } ;


 int test_long_fname_1 (struct dummy_tracepoint_args*) ;

int _dummy_tracepoint(struct dummy_tracepoint_args *arg)
{
 return test_long_fname_1(arg);
}
