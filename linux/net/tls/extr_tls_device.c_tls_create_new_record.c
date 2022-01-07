
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_record_info {int num_frags; size_t len; int * frags; } ;
struct tls_offload_context_tx {struct tls_record_info* open_record; } ;
struct page_frag {size_t offset; int page; } ;
typedef int skb_frag_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __skb_frag_set_page (int *,int ) ;
 int get_page (int ) ;
 struct tls_record_info* kmalloc (int,int ) ;
 int skb_frag_off_set (int *,size_t) ;
 int skb_frag_size_set (int *,size_t) ;

__attribute__((used)) static int tls_create_new_record(struct tls_offload_context_tx *offload_ctx,
     struct page_frag *pfrag,
     size_t prepend_size)
{
 struct tls_record_info *record;
 skb_frag_t *frag;

 record = kmalloc(sizeof(*record), GFP_KERNEL);
 if (!record)
  return -ENOMEM;

 frag = &record->frags[0];
 __skb_frag_set_page(frag, pfrag->page);
 skb_frag_off_set(frag, pfrag->offset);
 skb_frag_size_set(frag, prepend_size);

 get_page(pfrag->page);
 pfrag->offset += prepend_size;

 record->num_frags = 1;
 record->len = prepend_size;
 offload_ctx->open_record = record;
 return 0;
}
