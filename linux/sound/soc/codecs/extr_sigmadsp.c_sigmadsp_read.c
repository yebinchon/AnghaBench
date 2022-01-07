
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sigmadsp {int (* read ) (int ,unsigned int,int *,size_t) ;int control_data; } ;


 int stub1 (int ,unsigned int,int *,size_t) ;

__attribute__((used)) static int sigmadsp_read(struct sigmadsp *sigmadsp, unsigned int addr,
 uint8_t data[], size_t len)
{
 return sigmadsp->read(sigmadsp->control_data, addr, data, len);
}
