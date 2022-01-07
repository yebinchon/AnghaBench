
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dout (char*,int,int,...) ;
 int min (int,int) ;
 int zero_user_segment (struct page*,int,int) ;

void ceph_zero_page_vector_range(int off, int len, struct page **pages)
{
 int i = off >> PAGE_SHIFT;

 off &= ~PAGE_MASK;

 dout("zero_page_vector_page %u~%u\n", off, len);


 if (off) {
  int end = min((int)PAGE_SIZE, off + len);
  dout("zeroing %d %p head from %d\n", i, pages[i],
       (int)off);
  zero_user_segment(pages[i], off, end);
  len -= (end - off);
  i++;
 }
 while (len >= PAGE_SIZE) {
  dout("zeroing %d %p len=%d\n", i, pages[i], len);
  zero_user_segment(pages[i], 0, PAGE_SIZE);
  len -= PAGE_SIZE;
  i++;
 }

 if (len) {
  dout("zeroing %d %p tail to %d\n", i, pages[i], (int)len);
  zero_user_segment(pages[i], 0, len);
 }
}
