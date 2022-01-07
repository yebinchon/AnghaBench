
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct page {int dummy; } ;
struct buffer_head {int b_size; int b_data; struct page* b_page; } ;
typedef int seq ;
struct TYPE_9__ {int j_csum_seed; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_10__ {int t_checksum; } ;
typedef TYPE_2__ journal_block_tag_t ;
struct TYPE_11__ {void* t_checksum; } ;
typedef TYPE_3__ journal_block_tag3_t ;
typedef int __u8 ;
typedef int __u32 ;
typedef void* __be32 ;


 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int jbd2_chksum (TYPE_1__*,int ,int *,int) ;
 scalar_t__ jbd2_has_feature_csum3 (TYPE_1__*) ;
 int jbd2_journal_has_csum_v2or3 (TYPE_1__*) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int offset_in_page (int ) ;

__attribute__((used)) static void jbd2_block_tag_csum_set(journal_t *j, journal_block_tag_t *tag,
        struct buffer_head *bh, __u32 sequence)
{
 journal_block_tag3_t *tag3 = (journal_block_tag3_t *)tag;
 struct page *page = bh->b_page;
 __u8 *addr;
 __u32 csum32;
 __be32 seq;

 if (!jbd2_journal_has_csum_v2or3(j))
  return;

 seq = cpu_to_be32(sequence);
 addr = kmap_atomic(page);
 csum32 = jbd2_chksum(j, j->j_csum_seed, (__u8 *)&seq, sizeof(seq));
 csum32 = jbd2_chksum(j, csum32, addr + offset_in_page(bh->b_data),
        bh->b_size);
 kunmap_atomic(addr);

 if (jbd2_has_feature_csum3(j))
  tag3->t_checksum = cpu_to_be32(csum32);
 else
  tag->t_checksum = cpu_to_be16(csum32);
}
