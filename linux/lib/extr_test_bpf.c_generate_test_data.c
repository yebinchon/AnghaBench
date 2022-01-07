
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void sk_buff ;
struct page {int dummy; } ;
struct bpf_test {int aux; int frag_data; TYPE_1__* test; int data; } ;
struct TYPE_2__ {int data_size; } ;


 int FLAG_NO_DATA ;
 int FLAG_SKB_FRAG ;
 int GFP_KERNEL ;
 int MAX_DATA ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int kfree_skb (void*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (void*,int ,int ) ;
 void* populate_skb (int ,int ) ;
 int skb_add_rx_frag (void*,int ,struct page*,int ,int ,int ) ;

__attribute__((used)) static void *generate_test_data(struct bpf_test *test, int sub)
{
 struct sk_buff *skb;
 struct page *page;

 if (test->aux & FLAG_NO_DATA)
  return ((void*)0);





 skb = populate_skb(test->data, test->test[sub].data_size);
 if (!skb)
  return ((void*)0);

 if (test->aux & FLAG_SKB_FRAG) {





  void *ptr;

  page = alloc_page(GFP_KERNEL);

  if (!page)
   goto err_kfree_skb;

  ptr = kmap(page);
  if (!ptr)
   goto err_free_page;
  memcpy(ptr, test->frag_data, MAX_DATA);
  kunmap(page);
  skb_add_rx_frag(skb, 0, page, 0, MAX_DATA, MAX_DATA);
 }

 return skb;

err_free_page:
 __free_page(page);
err_kfree_skb:
 kfree_skb(skb);
 return ((void*)0);
}
