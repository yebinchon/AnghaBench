
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {void* data; } ;



__attribute__((used)) static inline void *
buffer_ext_addr(struct buffer_ext *be)
{
 return be->data;
}
