
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iucv_param {int dummy; } iucv_param ;


 int ENOMEM ;
 int EPERM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int __iucv_query_maxconn (void*,unsigned long*) ;
 unsigned long iucv_max_pathid ;
 int kfree (void*) ;
 void* kzalloc (int,int) ;

__attribute__((used)) static int iucv_query_maxconn(void)
{
 unsigned long max_pathid;
 void *param;
 int ccode;

 param = kzalloc(sizeof(union iucv_param), GFP_KERNEL | GFP_DMA);
 if (!param)
  return -ENOMEM;
 ccode = __iucv_query_maxconn(param, &max_pathid);
 if (ccode == 0)
  iucv_max_pathid = max_pathid;
 kfree(param);
 return ccode ? -EPERM : 0;
}
