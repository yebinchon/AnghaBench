
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct list_head {int dummy; } ;


 int __do_munmap (struct mm_struct*,unsigned long,size_t,struct list_head*,int) ;

int do_munmap(struct mm_struct *mm, unsigned long start, size_t len,
       struct list_head *uf)
{
 return __do_munmap(mm, start, len, uf, 0);
}
