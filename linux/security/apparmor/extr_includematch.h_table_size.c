
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_header {int dummy; } ;


 size_t ALIGN (int,int) ;

__attribute__((used)) static inline size_t table_size(size_t len, size_t el_size)
{
 return ALIGN(sizeof(struct table_header) + len * el_size, 8);
}
