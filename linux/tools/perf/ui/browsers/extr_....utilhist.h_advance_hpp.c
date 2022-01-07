
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp {int buf; int size; } ;



__attribute__((used)) static inline void advance_hpp(struct perf_hpp *hpp, int inc)
{
 hpp->buf += inc;
 hpp->size -= inc;
}
