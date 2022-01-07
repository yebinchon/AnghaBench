
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filename_trans {void* name; } ;


 int cond_resched () ;
 int kfree (void*) ;

__attribute__((used)) static int filenametr_destroy(void *key, void *datum, void *p)
{
 struct filename_trans *ft = key;

 kfree(ft->name);
 kfree(key);
 kfree(datum);
 cond_resched();
 return 0;
}
