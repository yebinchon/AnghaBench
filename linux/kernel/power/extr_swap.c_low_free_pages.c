
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long nr_free_highpages () ;
 unsigned long nr_free_pages () ;

__attribute__((used)) static inline unsigned long low_free_pages(void)
{
 return nr_free_pages() - nr_free_highpages();
}
