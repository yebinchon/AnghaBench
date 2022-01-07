
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TID_STEP ;

__attribute__((used)) static inline unsigned long next_tid(unsigned long tid)
{
 return tid + TID_STEP;
}
