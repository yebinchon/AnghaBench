
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deferred_split {int dummy; } ;
struct pglist_data {struct deferred_split deferred_split_queue; } ;
struct page {int dummy; } ;


 struct pglist_data* NODE_DATA (int ) ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static inline struct deferred_split *get_deferred_split_queue(struct page *page)
{
 struct pglist_data *pgdat = NODE_DATA(page_to_nid(page));

 return &pgdat->deferred_split_queue;
}
