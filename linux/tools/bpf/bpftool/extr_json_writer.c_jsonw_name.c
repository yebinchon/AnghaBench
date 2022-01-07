
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char sep; int out; scalar_t__ pretty; } ;
typedef TYPE_1__ json_writer_t ;


 int jsonw_eol (TYPE_1__*) ;
 int jsonw_eor (TYPE_1__*) ;
 int jsonw_puts (TYPE_1__*,char const*) ;
 int putc (char,int ) ;

void jsonw_name(json_writer_t *self, const char *name)
{
 jsonw_eor(self);
 jsonw_eol(self);
 self->sep = '\0';
 jsonw_puts(self, name);
 putc(':', self->out);
 if (self->pretty)
  putc(' ', self->out);
}
