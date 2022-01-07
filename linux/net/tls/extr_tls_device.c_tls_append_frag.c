
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_record_info {int num_frags; int len; int * frags; } ;
struct page_frag {scalar_t__ offset; int page; } ;
typedef int skb_frag_t ;


 int __skb_frag_set_page (int *,int ) ;
 int get_page (int ) ;
 scalar_t__ skb_frag_off (int *) ;
 int skb_frag_off_set (int *,scalar_t__) ;
 int skb_frag_page (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 int skb_frag_size_add (int *,int) ;
 int skb_frag_size_set (int *,int) ;

__attribute__((used)) static void tls_append_frag(struct tls_record_info *record,
       struct page_frag *pfrag,
       int size)
{
 skb_frag_t *frag;

 frag = &record->frags[record->num_frags - 1];
 if (skb_frag_page(frag) == pfrag->page &&
     skb_frag_off(frag) + skb_frag_size(frag) == pfrag->offset) {
  skb_frag_size_add(frag, size);
 } else {
  ++frag;
  __skb_frag_set_page(frag, pfrag->page);
  skb_frag_off_set(frag, pfrag->offset);
  skb_frag_size_set(frag, size);
  ++record->num_frags;
  get_page(pfrag->page);
 }

 pfrag->offset += size;
 record->len += size;
}
