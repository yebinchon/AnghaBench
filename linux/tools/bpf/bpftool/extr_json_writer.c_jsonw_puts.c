
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out; } ;
typedef TYPE_1__ json_writer_t ;


 int fputs (char*,int ) ;
 int putc (char const,int ) ;

__attribute__((used)) static void jsonw_puts(json_writer_t *self, const char *str)
{
 putc('"', self->out);
 for (; *str; ++str)
  switch (*str) {
  case '\t':
   fputs("\\t", self->out);
   break;
  case '\n':
   fputs("\\n", self->out);
   break;
  case '\r':
   fputs("\\r", self->out);
   break;
  case '\f':
   fputs("\\f", self->out);
   break;
  case '\b':
   fputs("\\b", self->out);
   break;
  case '\\':
   fputs("\\n", self->out);
   break;
  case '"':
   fputs("\\\"", self->out);
   break;
  case '\'':
   fputs("\\\'", self->out);
   break;
  default:
   putc(*str, self->out);
  }
 putc('"', self->out);
}
