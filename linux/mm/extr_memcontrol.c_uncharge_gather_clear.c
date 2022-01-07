
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncharge_gather {int dummy; } ;


 int memset (struct uncharge_gather*,int ,int) ;

__attribute__((used)) static inline void uncharge_gather_clear(struct uncharge_gather *ug)
{
 memset(ug, 0, sizeof(*ug));
}
