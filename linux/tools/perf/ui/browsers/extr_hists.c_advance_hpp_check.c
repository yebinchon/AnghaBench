
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp {scalar_t__ size; } ;


 int advance_hpp (struct perf_hpp*,int) ;

__attribute__((used)) static int advance_hpp_check(struct perf_hpp *hpp, int inc)
{
 advance_hpp(hpp, inc);
 return hpp->size <= 0;
}
