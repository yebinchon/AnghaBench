
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int dummy; } ;
struct rela {int dummy; } ;


 struct rela* find_rela_by_dest_range (struct section*,unsigned long,int) ;

struct rela *find_rela_by_dest(struct section *sec, unsigned long offset)
{
 return find_rela_by_dest_range(sec, offset, 1);
}
