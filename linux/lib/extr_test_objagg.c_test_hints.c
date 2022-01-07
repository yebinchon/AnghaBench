
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hints_case ;
 int test_hints_case (int *) ;

__attribute__((used)) static int test_hints(void)
{
 return test_hints_case(&hints_case);
}
