
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageChecked (struct page*) ;

__attribute__((used)) static inline void set_cold_data(struct page *page)
{
 SetPageChecked(page);
}
