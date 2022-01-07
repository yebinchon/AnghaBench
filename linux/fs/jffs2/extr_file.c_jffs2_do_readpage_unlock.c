
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int jffs2_do_readpage_nolock (void*,struct page*) ;
 int unlock_page (struct page*) ;

int jffs2_do_readpage_unlock(void *data, struct page *pg)
{
 int ret = jffs2_do_readpage_nolock(data, pg);
 unlock_page(pg);
 return ret;
}
