
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int less_eq (int ,int ) ;

__attribute__((used)) static inline int more(u16 left, u16 right)
{
 return !less_eq(left, right);
}
