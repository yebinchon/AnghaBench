
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filter {int dummy; } ;


 int addr_filter__free_str (struct addr_filter*) ;
 int free (struct addr_filter*) ;

__attribute__((used)) static void addr_filter__free(struct addr_filter *filt)
{
 if (filt)
  addr_filter__free_str(filt);
 free(filt);
}
