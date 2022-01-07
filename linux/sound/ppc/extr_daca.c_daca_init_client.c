
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_keywest {int client; } ;


 int DACA_REG_AVOL ;
 int DACA_REG_GCFG ;
 int DACA_REG_SR ;
 int EINVAL ;
 int i2c_smbus_write_block_data (int ,int ,int,unsigned char*) ;
 scalar_t__ i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int daca_init_client(struct pmac_keywest *i2c)
{
 unsigned short wdata = 0x00;


 if (i2c_smbus_write_byte_data(i2c->client, DACA_REG_SR, 0x08) < 0 ||
     i2c_smbus_write_byte_data(i2c->client, DACA_REG_GCFG, 0x05) < 0)
  return -EINVAL;
 return i2c_smbus_write_block_data(i2c->client, DACA_REG_AVOL,
       2, (unsigned char*)&wdata);
}
