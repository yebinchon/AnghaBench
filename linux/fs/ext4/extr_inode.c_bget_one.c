
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int get_bh (struct buffer_head*) ;

__attribute__((used)) static int bget_one(handle_t *handle, struct buffer_head *bh)
{
 get_bh(bh);
 return 0;
}
