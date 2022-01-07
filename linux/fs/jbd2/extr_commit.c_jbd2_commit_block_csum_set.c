
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct commit_header {scalar_t__* h_chksum; scalar_t__ h_chksum_size; scalar_t__ h_chksum_type; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {int j_blocksize; int j_csum_seed; } ;
typedef TYPE_1__ journal_t ;
typedef int __u32 ;


 scalar_t__ cpu_to_be32 (int ) ;
 int jbd2_chksum (TYPE_1__*,int ,scalar_t__,int ) ;
 int jbd2_journal_has_csum_v2or3 (TYPE_1__*) ;

__attribute__((used)) static void jbd2_commit_block_csum_set(journal_t *j, struct buffer_head *bh)
{
 struct commit_header *h;
 __u32 csum;

 if (!jbd2_journal_has_csum_v2or3(j))
  return;

 h = (struct commit_header *)(bh->b_data);
 h->h_chksum_type = 0;
 h->h_chksum_size = 0;
 h->h_chksum[0] = 0;
 csum = jbd2_chksum(j, j->j_csum_seed, bh->b_data, j->j_blocksize);
 h->h_chksum[0] = cpu_to_be32(csum);
}
