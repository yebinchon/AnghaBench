
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int BUG_ON (int) ;
 int munmap (void*,int ) ;

__attribute__((used)) static void free_data(void *data, ssize_t bytes)
{
 int ret;

 if (!data)
  return;

 ret = munmap(data, bytes);
 BUG_ON(ret);
}
