
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct phdr_data {int offset; void* len; void* addr; } ;
typedef int off_t ;


 struct phdr_data* zalloc (int) ;

__attribute__((used)) static struct phdr_data *phdr_data__new(u64 addr, u64 len, off_t offset)
{
 struct phdr_data *p = zalloc(sizeof(*p));

 if (p) {
  p->addr = addr;
  p->len = len;
  p->offset = offset;
 }

 return p;
}
