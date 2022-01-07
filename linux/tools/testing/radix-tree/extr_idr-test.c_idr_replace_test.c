
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_IDR (int ) ;
 int GFP_KERNEL ;
 int idr ;
 int idr_alloc (int *,void*,int,int,int ) ;
 int idr_destroy (int *) ;
 int idr_replace (int *,int *,int) ;

void idr_replace_test(void)
{
 DEFINE_IDR(idr);

 idr_alloc(&idr, (void *)-1, 10, 11, GFP_KERNEL);
 idr_replace(&idr, &idr, 10);

 idr_destroy(&idr);
}
