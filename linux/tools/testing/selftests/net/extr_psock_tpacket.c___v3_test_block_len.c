
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int num_pkts; scalar_t__ blk_len; } ;
struct block_desc {TYPE_1__ h1; } ;


 int exit (int) ;
 int fprintf (int ,char*,int,int,scalar_t__,scalar_t__) ;
 int stderr ;

__attribute__((used)) static void __v3_test_block_len(struct block_desc *pbd, uint32_t bytes, int block_num)
{
 if (pbd->h1.num_pkts && bytes != pbd->h1.blk_len) {
  fprintf(stderr, "\nblock:%u with %upackets, expected "
   "len:%u != actual len:%u\n", block_num,
   pbd->h1.num_pkts, bytes, pbd->h1.blk_len);
  exit(1);
 }
}
