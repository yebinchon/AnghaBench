
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int t_tid; TYPE_2__* t_journal; } ;
typedef TYPE_1__ transaction_t ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_7__ {int j_blocksize; int j_dev; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_8__ {void* h_sequence; void* h_blocktype; void* h_magic; } ;
typedef TYPE_3__ journal_header_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int JBD2_MAGIC_NUMBER ;
 struct buffer_head* __getblk (int ,unsigned long long,int ) ;
 void* cpu_to_be32 (int) ;
 int jbd2_journal_next_log_block (TYPE_2__*,unsigned long long*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (scalar_t__,int ,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

struct buffer_head *
jbd2_journal_get_descriptor_buffer(transaction_t *transaction, int type)
{
 journal_t *journal = transaction->t_journal;
 struct buffer_head *bh;
 unsigned long long blocknr;
 journal_header_t *header;
 int err;

 err = jbd2_journal_next_log_block(journal, &blocknr);

 if (err)
  return ((void*)0);

 bh = __getblk(journal->j_dev, blocknr, journal->j_blocksize);
 if (!bh)
  return ((void*)0);
 lock_buffer(bh);
 memset(bh->b_data, 0, journal->j_blocksize);
 header = (journal_header_t *)bh->b_data;
 header->h_magic = cpu_to_be32(JBD2_MAGIC_NUMBER);
 header->h_blocktype = cpu_to_be32(type);
 header->h_sequence = cpu_to_be32(transaction->t_tid);
 set_buffer_uptodate(bh);
 unlock_buffer(bh);
 BUFFER_TRACE(bh, "return this buffer");
 return bh;
}
