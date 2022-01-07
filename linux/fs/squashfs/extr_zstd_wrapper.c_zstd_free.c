
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workspace {int mem; } ;


 int kfree (struct workspace*) ;
 int vfree (int ) ;

__attribute__((used)) static void zstd_free(void *strm)
{
 struct workspace *wksp = strm;

 if (wksp)
  vfree(wksp->mem);
 kfree(wksp);
}
