
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ buffer_delay (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;

__attribute__((used)) static int ext4_bh_delay_or_unwritten(handle_t *handle, struct buffer_head *bh)
{
 return (buffer_delay(bh) || buffer_unwritten(bh)) && buffer_dirty(bh);
}
