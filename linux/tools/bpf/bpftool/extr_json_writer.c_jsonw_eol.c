
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int out; int pretty; } ;
typedef TYPE_1__ json_writer_t ;


 int jsonw_indent (TYPE_1__*) ;
 int putc (char,int ) ;

__attribute__((used)) static void jsonw_eol(json_writer_t *self)
{
 if (!self->pretty)
  return;

 putc('\n', self->out);
 jsonw_indent(self);
}
