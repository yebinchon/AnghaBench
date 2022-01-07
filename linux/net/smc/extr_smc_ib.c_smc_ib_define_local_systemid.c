
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smc_ib_device {int * mac; } ;


 int get_random_bytes (int *,int) ;
 int * local_systemid ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void smc_ib_define_local_systemid(struct smc_ib_device *smcibdev,
      u8 ibport)
{
 memcpy(&local_systemid[2], &smcibdev->mac[ibport - 1],
        sizeof(smcibdev->mac[ibport - 1]));
 get_random_bytes(&local_systemid[0], 2);
}
