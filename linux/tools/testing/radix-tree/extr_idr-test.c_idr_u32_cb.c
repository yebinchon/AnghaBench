
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 void* DUMMY_PTR ;

int idr_u32_cb(int id, void *ptr, void *data)
{
 BUG_ON(id < 0);
 BUG_ON(ptr != DUMMY_PTR);
 return 0;
}
