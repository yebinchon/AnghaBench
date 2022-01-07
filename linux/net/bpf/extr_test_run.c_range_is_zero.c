
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memchr_inv (int *,int ,size_t) ;

__attribute__((used)) static inline bool range_is_zero(void *buf, size_t from, size_t to)
{
 return !memchr_inv((u8 *)buf + from, 0, to - from);
}
