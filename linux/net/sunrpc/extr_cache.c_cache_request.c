
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_request {char* buf; int item; } ;
struct cache_detail {int (* cache_request ) (struct cache_detail*,int ,char**,int*) ;} ;


 int EAGAIN ;
 int PAGE_SIZE ;
 int stub1 (struct cache_detail*,int ,char**,int*) ;

__attribute__((used)) static int cache_request(struct cache_detail *detail,
          struct cache_request *crq)
{
 char *bp = crq->buf;
 int len = PAGE_SIZE;

 detail->cache_request(detail, crq->item, &bp, &len);
 if (len < 0)
  return -EAGAIN;
 return PAGE_SIZE - len;
}
