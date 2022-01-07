
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_chan {int remote_key_dist; } ;


 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_ENCRYPT_INFO ;
 int SMP_CMD_IDENT_INFO ;
 int SMP_CMD_SIGN_INFO ;
 int SMP_DIST_ENC_KEY ;
 int SMP_DIST_ID_KEY ;
 int SMP_DIST_SIGN ;

__attribute__((used)) static void smp_allow_key_dist(struct smp_chan *smp)
{




 if (smp->remote_key_dist & SMP_DIST_ENC_KEY)
  SMP_ALLOW_CMD(smp, SMP_CMD_ENCRYPT_INFO);
 else if (smp->remote_key_dist & SMP_DIST_ID_KEY)
  SMP_ALLOW_CMD(smp, SMP_CMD_IDENT_INFO);
 else if (smp->remote_key_dist & SMP_DIST_SIGN)
  SMP_ALLOW_CMD(smp, SMP_CMD_SIGN_INFO);
}
