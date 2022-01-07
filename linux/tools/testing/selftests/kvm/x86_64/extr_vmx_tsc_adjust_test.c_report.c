
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int TSC_ADJUST_VALUE ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void report(int64_t val)
{
 printf("IA32_TSC_ADJUST is %ld (%lld * TSC_ADJUST_VALUE + %lld).\n",
        val, val / TSC_ADJUST_VALUE, val % TSC_ADJUST_VALUE);
}
