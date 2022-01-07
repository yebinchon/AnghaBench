
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int __address_space_init_once (struct address_space*) ;
 int memset (struct address_space*,int ,int) ;

void address_space_init_once(struct address_space *mapping)
{
 memset(mapping, 0, sizeof(*mapping));
 __address_space_init_once(mapping);
}
