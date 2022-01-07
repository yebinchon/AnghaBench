
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int kfree (struct hlist_head*) ;

__attribute__((used)) static void fib_info_hash_free(struct hlist_head *hash, int bytes)
{
 if (!hash)
  return;

 if (bytes <= PAGE_SIZE)
  kfree(hash);
 else
  free_pages((unsigned long) hash, get_order(bytes));
}
