
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {size_t cur_pos; } ;



__attribute__((used)) static inline size_t
buffer_ext_size(struct buffer_ext *be)
{
 return be->cur_pos;
}
