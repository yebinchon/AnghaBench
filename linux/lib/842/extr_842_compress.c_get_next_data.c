
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw842_param {void** data2; void** data4; void** data8; } ;


 void* get_input_data (struct sw842_param*,int,int) ;

__attribute__((used)) static void get_next_data(struct sw842_param *p)
{
 p->data8[0] = get_input_data(p, 0, 64);
 p->data4[0] = get_input_data(p, 0, 32);
 p->data4[1] = get_input_data(p, 4, 32);
 p->data2[0] = get_input_data(p, 0, 16);
 p->data2[1] = get_input_data(p, 2, 16);
 p->data2[2] = get_input_data(p, 4, 16);
 p->data2[3] = get_input_data(p, 6, 16);
}
