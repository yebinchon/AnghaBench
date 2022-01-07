
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;


 int UNFM_P_SIZE ;
 int ih_item_len (struct item_head*) ;

__attribute__((used)) static int indirect_bytes_number(struct item_head *ih, int block_size)
{
 return ih_item_len(ih) / UNFM_P_SIZE * block_size;
}
