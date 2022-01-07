
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char sep; int out; } ;
typedef TYPE_1__ json_writer_t ;


 int putc (char,int ) ;

__attribute__((used)) static void jsonw_eor(json_writer_t *self)
{
 if (self->sep != '\0')
  putc(self->sep, self->out);
 self->sep = ',';
}
