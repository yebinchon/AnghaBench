
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_last_request () ;
 int reg_request_cell_base (int ) ;

bool reg_last_request_cell_base(void)
{
 return reg_request_cell_base(get_last_request());
}
