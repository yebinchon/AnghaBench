
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int page_cache_prev_miss (struct address_space*,int,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static pgoff_t count_history_pages(struct address_space *mapping,
       pgoff_t offset, unsigned long max)
{
 pgoff_t head;

 rcu_read_lock();
 head = page_cache_prev_miss(mapping, offset - 1, max);
 rcu_read_unlock();

 return offset - 1 - head;
}
