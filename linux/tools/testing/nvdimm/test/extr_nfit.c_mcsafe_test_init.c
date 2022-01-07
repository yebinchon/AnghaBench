
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int,size_t) ;

__attribute__((used)) static void mcsafe_test_init(char *dst, char *src, size_t size)
{
 size_t i;

 memset(dst, 0xff, size);
 for (i = 0; i < size; i++)
  src[i] = (char) i;
}
