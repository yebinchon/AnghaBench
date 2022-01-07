
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* writepage ) (struct page*,struct writeback_control*) ;} ;


 int mapping_set_error (struct address_space*,int) ;
 int stub1 (struct page*,struct writeback_control*) ;

__attribute__((used)) static int __writepage(struct page *page, struct writeback_control *wbc,
         void *data)
{
 struct address_space *mapping = data;
 int ret = mapping->a_ops->writepage(page, wbc);
 mapping_set_error(mapping, ret);
 return ret;
}
