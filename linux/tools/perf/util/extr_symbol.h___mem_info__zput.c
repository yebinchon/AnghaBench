
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_info {int dummy; } ;


 int mem_info__put (struct mem_info*) ;

__attribute__((used)) static inline void __mem_info__zput(struct mem_info **mi)
{
 mem_info__put(*mi);
 *mi = ((void*)0);
}
