
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int depth; int out; } ;
typedef TYPE_1__ json_writer_t ;


 int fputs (char*,int ) ;

__attribute__((used)) static void jsonw_indent(json_writer_t *self)
{
 unsigned i;
 for (i = 0; i < self->depth; ++i)
  fputs("    ", self->out);
}
