
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 void* ih_item_body (struct buffer_head const*,int ) ;
 int item_head (struct buffer_head const*,int) ;

__attribute__((used)) static inline void *item_body(const struct buffer_head *bh, int item_num)
{
 return ih_item_body(bh, item_head(bh, item_num));
}
