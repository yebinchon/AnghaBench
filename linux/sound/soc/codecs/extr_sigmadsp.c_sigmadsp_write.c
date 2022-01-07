
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sigmadsp {int (* write ) (int ,unsigned int,int const*,size_t) ;int control_data; } ;


 int stub1 (int ,unsigned int,int const*,size_t) ;

__attribute__((used)) static int sigmadsp_write(struct sigmadsp *sigmadsp, unsigned int addr,
 const uint8_t data[], size_t len)
{
 return sigmadsp->write(sigmadsp->control_data, addr, data, len);
}
