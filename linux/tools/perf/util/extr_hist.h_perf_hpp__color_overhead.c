
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PERF_COLOR_RESET ;


 int COLOR_MAXLEN ;
 int PERF_HPP__MAX_INDEX ;
 scalar_t__ perf_hpp__use_color () ;

__attribute__((used)) static inline size_t perf_hpp__color_overhead(void)
{
 return perf_hpp__use_color() ?
        (COLOR_MAXLEN + sizeof(PERF_COLOR_RESET)) * PERF_HPP__MAX_INDEX
        : 0;
}
