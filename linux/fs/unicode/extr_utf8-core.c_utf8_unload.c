
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_map {int dummy; } ;


 int kfree (struct unicode_map*) ;

void utf8_unload(struct unicode_map *um)
{
 kfree(um);
}
