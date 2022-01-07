
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int auth_chunk; int skb; int transmitted_list; int list; } ;


 int BUG_ON (int) ;
 int SCTP_DBG_OBJCNT_DEC (struct sctp_chunk*) ;
 int consume_skb (int ) ;
 int kmem_cache_free (int ,struct sctp_chunk*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int sctp_chunk_cachep ;

__attribute__((used)) static void sctp_chunk_destroy(struct sctp_chunk *chunk)
{
 BUG_ON(!list_empty(&chunk->list));
 list_del_init(&chunk->transmitted_list);

 consume_skb(chunk->skb);
 consume_skb(chunk->auth_chunk);

 SCTP_DBG_OBJCNT_DEC(chunk);
 kmem_cache_free(sctp_chunk_cachep, chunk);
}
