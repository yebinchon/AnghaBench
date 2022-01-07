
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BT_ERR (char*) ;
 int memcpy (int *,int const*,int) ;
 int smp_e (int const*,int *) ;

__attribute__((used)) static int smp_s1(const u8 k[16],
    const u8 r1[16], const u8 r2[16], u8 _r[16])
{
 int err;


 memcpy(_r, r2, 8);
 memcpy(_r + 8, r1, 8);

 err = smp_e(k, _r);
 if (err)
  BT_ERR("Encrypt data error");

 return err;
}
