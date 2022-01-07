
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_header {int dummy; } ;


 int __free_page (int ) ;
 int virt_to_page (struct zbud_header*) ;

__attribute__((used)) static void free_zbud_page(struct zbud_header *zhdr)
{
 __free_page(virt_to_page(zhdr));
}
