
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int dummy; } ;


 int amixer_index (struct rsc const*) ;

__attribute__((used)) static int amixer_output_slot(const struct rsc *rsc)
{
 return (amixer_index(rsc) << 4) + 0x4;
}
