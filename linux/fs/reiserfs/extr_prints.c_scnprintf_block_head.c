
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int B_FREE_SPACE (struct buffer_head*) ;
 int B_LEVEL (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 int scnprintf (char*,size_t,char*,int ,int ,int ) ;

__attribute__((used)) static int scnprintf_block_head(char *buf, size_t size, struct buffer_head *bh)
{
 return scnprintf(buf, size,
    "level=%d, nr_items=%d, free_space=%d rdkey ",
    B_LEVEL(bh), B_NR_ITEMS(bh), B_FREE_SPACE(bh));
}
