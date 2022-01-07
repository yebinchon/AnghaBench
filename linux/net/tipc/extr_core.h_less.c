
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ less_eq (int ,int ) ;
 scalar_t__ mod (int ) ;

__attribute__((used)) static inline int less(u16 left, u16 right)
{
 return less_eq(left, right) && (mod(right) != mod(left));
}
