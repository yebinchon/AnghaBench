
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int sg_mark_end (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,struct page*,int,int) ;
 int sg_unmark_end (struct scatterlist*) ;

__attribute__((used)) static int
pack_sg_list_p(struct scatterlist *sg, int start, int limit,
        struct page **pdata, int nr_pages, size_t offs, int count)
{
 int i = 0, s;
 int data_off = offs;
 int index = start;

 BUG_ON(nr_pages > (limit - start));




 while (nr_pages) {
  s = PAGE_SIZE - data_off;
  if (s > count)
   s = count;
  BUG_ON(index >= limit);

  sg_unmark_end(&sg[index]);
  sg_set_page(&sg[index++], pdata[i++], s, data_off);
  data_off = 0;
  count -= s;
  nr_pages--;
 }

 if (index-start)
  sg_mark_end(&sg[index - 1]);
 return index - start;
}
