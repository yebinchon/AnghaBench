
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_begin (int *,char) ;

void jsonw_start_array(json_writer_t *self)
{
 jsonw_begin(self, '[');
}
