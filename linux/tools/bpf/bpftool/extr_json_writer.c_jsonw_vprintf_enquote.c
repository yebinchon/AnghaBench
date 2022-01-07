
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {int out; } ;
typedef TYPE_1__ json_writer_t ;


 int jsonw_eor (TYPE_1__*) ;
 int putc (char,int ) ;
 int vfprintf (int ,char const*,int ) ;

void jsonw_vprintf_enquote(json_writer_t *self, const char *fmt, va_list ap)
{
 jsonw_eor(self);
 putc('"', self->out);
 vfprintf(self->out, fmt, ap);
 putc('"', self->out);
}
