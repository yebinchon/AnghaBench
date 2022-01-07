
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filter {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 struct addr_filter* zalloc (int) ;

__attribute__((used)) static struct addr_filter *addr_filter__new(void)
{
 struct addr_filter *filt = zalloc(sizeof(*filt));

 if (filt)
  INIT_LIST_HEAD(&filt->list);

 return filt;
}
