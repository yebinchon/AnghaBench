
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;
typedef int cell_t ;


 struct data data_append_cell (struct data,int ) ;

__attribute__((used)) static void bin_emit_cell(void *e, cell_t val)
{
 struct data *dtbuf = e;

 *dtbuf = data_append_cell(*dtbuf, val);
}
