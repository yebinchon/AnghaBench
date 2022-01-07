
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gup_benchmark {int size; int nr_pages_per_call; unsigned long addr; int flags; void* put_delta_usec; void* get_delta_usec; } ;
typedef int ktime_t ;


 int EINVAL ;
 int ENOMEM ;
 int FOLL_LONGTERM ;
 int GFP_KERNEL ;



 int PAGE_SIZE ;
 int ULONG_MAX ;
 int get_user_pages (unsigned long,int,int,struct page**,int *) ;
 int get_user_pages_fast (unsigned long,int,int,struct page**) ;
 int ktime_get () ;
 void* ktime_us_delta (int ,int ) ;
 struct page** kvcalloc (unsigned long,int,int ) ;
 int kvfree (struct page**) ;
 int put_page (struct page*) ;

__attribute__((used)) static int __gup_benchmark_ioctl(unsigned int cmd,
  struct gup_benchmark *gup)
{
 ktime_t start_time, end_time;
 unsigned long i, nr_pages, addr, next;
 int nr;
 struct page **pages;

 if (gup->size > ULONG_MAX)
  return -EINVAL;

 nr_pages = gup->size / PAGE_SIZE;
 pages = kvcalloc(nr_pages, sizeof(void *), GFP_KERNEL);
 if (!pages)
  return -ENOMEM;

 i = 0;
 nr = gup->nr_pages_per_call;
 start_time = ktime_get();
 for (addr = gup->addr; addr < gup->addr + gup->size; addr = next) {
  if (nr != gup->nr_pages_per_call)
   break;

  next = addr + nr * PAGE_SIZE;
  if (next > gup->addr + gup->size) {
   next = gup->addr + gup->size;
   nr = (next - addr) / PAGE_SIZE;
  }

  switch (cmd) {
  case 129:
   nr = get_user_pages_fast(addr, nr, gup->flags & 1,
       pages + i);
   break;
  case 128:
   nr = get_user_pages(addr, nr,
         (gup->flags & 1) | FOLL_LONGTERM,
         pages + i, ((void*)0));
   break;
  case 130:
   nr = get_user_pages(addr, nr, gup->flags & 1, pages + i,
         ((void*)0));
   break;
  default:
   return -1;
  }

  if (nr <= 0)
   break;
  i += nr;
 }
 end_time = ktime_get();

 gup->get_delta_usec = ktime_us_delta(end_time, start_time);
 gup->size = addr - gup->addr;

 start_time = ktime_get();
 for (i = 0; i < nr_pages; i++) {
  if (!pages[i])
   break;
  put_page(pages[i]);
 }
 end_time = ktime_get();
 gup->put_delta_usec = ktime_us_delta(end_time, start_time);

 kvfree(pages);
 return 0;
}
