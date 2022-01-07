
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int less (int ,int ) ;
 int more (int ,int ) ;

__attribute__((used)) static inline int in_range(u16 val, u16 min, u16 max)
{
 return !less(val, min) && !more(val, max);
}
