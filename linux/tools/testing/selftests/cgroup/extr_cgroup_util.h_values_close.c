
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long abs (long) ;

__attribute__((used)) static inline int values_close(long a, long b, int err)
{
 return abs(a - b) <= (a + b) / 100 * err;
}
