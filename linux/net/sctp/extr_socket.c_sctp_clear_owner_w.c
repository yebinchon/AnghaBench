
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int skb; } ;


 int skb_orphan (int ) ;

__attribute__((used)) static void sctp_clear_owner_w(struct sctp_chunk *chunk)
{
 skb_orphan(chunk->skb);
}
