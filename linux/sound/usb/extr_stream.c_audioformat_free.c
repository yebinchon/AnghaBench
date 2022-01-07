
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audioformat {struct audioformat* chmap; struct audioformat* rate_table; int list; } ;


 int kfree (struct audioformat*) ;
 int list_del (int *) ;

__attribute__((used)) static void audioformat_free(struct audioformat *fp)
{
 list_del(&fp->list);
 kfree(fp->rate_table);
 kfree(fp->chmap);
 kfree(fp);
}
