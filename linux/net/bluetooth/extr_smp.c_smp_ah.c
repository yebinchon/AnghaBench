
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;


 int BT_ERR (char*) ;
 int memcpy (int const*,int const*,int) ;
 int memset (int const*,int ,int) ;
 int smp_e (int const*,int const*) ;

__attribute__((used)) static int smp_ah(const u8 irk[16], const u8 r[3], u8 res[3])
{
 u8 _res[16];
 int err;


 memcpy(_res, r, 3);
 memset(_res + 3, 0, 13);

 err = smp_e(irk, _res);
 if (err) {
  BT_ERR("Encrypt error");
  return err;
 }







 memcpy(res, _res, 3);

 return 0;
}
