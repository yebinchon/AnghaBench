
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {scalar_t__ len; scalar_t__ val; } ;


 struct data data_grow_for (struct data,int) ;
 int memset (scalar_t__,int ,int) ;

struct data data_append_zeroes(struct data d, int len)
{
 d = data_grow_for(d, len);

 memset(d.val + d.len, 0, len);
 d.len += len;
 return d;
}
