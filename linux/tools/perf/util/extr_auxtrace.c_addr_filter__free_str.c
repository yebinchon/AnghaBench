
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filter {int * filename; int * sym_to; int * sym_from; int * action; int str; } ;


 int zfree (int *) ;

__attribute__((used)) static void addr_filter__free_str(struct addr_filter *filt)
{
 zfree(&filt->str);
 filt->action = ((void*)0);
 filt->sym_from = ((void*)0);
 filt->sym_to = ((void*)0);
 filt->filename = ((void*)0);
}
