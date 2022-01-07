
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ext {scalar_t__ max_sz; scalar_t__ cur_pos; int * data; } ;



__attribute__((used)) static void
buffer_ext_init(struct buffer_ext *be)
{
 be->data = ((void*)0);
 be->cur_pos = 0;
 be->max_sz = 0;
}
