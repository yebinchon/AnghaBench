
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char sep; int depth; int out; } ;
typedef TYPE_1__ json_writer_t ;


 int jsonw_eor (TYPE_1__*) ;
 int putc (int,int ) ;

__attribute__((used)) static void jsonw_begin(json_writer_t *self, int c)
{
 jsonw_eor(self);
 putc(c, self->out);
 ++self->depth;
 self->sep = '\0';
}
