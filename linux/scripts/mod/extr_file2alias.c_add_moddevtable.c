
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; int pos; } ;
struct module {TYPE_1__ dev_table_buf; } ;
struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*) ;
 int buf_write (struct buffer*,int ,int ) ;
 int free (int ) ;

void add_moddevtable(struct buffer *buf, struct module *mod)
{
 buf_printf(buf, "\n");
 buf_write(buf, mod->dev_table_buf.p, mod->dev_table_buf.pos);
 free(mod->dev_table_buf.p);
}
