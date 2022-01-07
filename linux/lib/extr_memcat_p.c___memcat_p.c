
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void** kmalloc_array (int,int,int ) ;

void **__memcat_p(void **a, void **b)
{
 void **p = a, **new;
 int nr;


 for (nr = 0, p = a; *p; nr++, p++)
  ;
 for (p = b; *p; nr++, p++)
  ;

 nr++;

 new = kmalloc_array(nr, sizeof(void *), GFP_KERNEL);
 if (!new)
  return ((void*)0);


 for (nr--; nr >= 0; nr--, p = p == b ? &a[nr] : p - 1)
  new[nr] = *p;

 return new;
}
