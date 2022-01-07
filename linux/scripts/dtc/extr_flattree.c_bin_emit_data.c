
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int len; int val; } ;


 struct data data_append_data (struct data,int ,int ) ;

__attribute__((used)) static void bin_emit_data(void *e, struct data d)
{
 struct data *dtbuf = e;

 *dtbuf = data_append_data(*dtbuf, d.val, d.len);
}
