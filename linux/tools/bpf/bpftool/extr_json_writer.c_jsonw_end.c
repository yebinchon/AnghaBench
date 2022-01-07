
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ depth; char sep; int out; } ;
typedef TYPE_1__ json_writer_t ;


 int assert (int) ;
 int jsonw_eol (TYPE_1__*) ;
 int putc (int,int ) ;

__attribute__((used)) static void jsonw_end(json_writer_t *self, int c)
{
 assert(self->depth > 0);

 --self->depth;
 if (self->sep != '\0')
  jsonw_eol(self);
 putc(c, self->out);
 self->sep = ',';
}
