
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_data_page {int commit; } ;


 int local_set (int *,int ) ;

__attribute__((used)) static void rb_init_page(struct buffer_data_page *bpage)
{
 local_set(&bpage->commit, 0);
}
