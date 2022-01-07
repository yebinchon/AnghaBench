
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {int dummy; } ;


 unsigned char AK4620_CKS0 ;
 unsigned char AK4620_CKS1 ;
 unsigned char AK4620_DFS0 ;
 unsigned char AK4620_DFS1 ;
 int AK4620_DFS_REG ;
 int qtet_akm_set_regs (struct snd_akm4xxx*,int ,unsigned char,unsigned char) ;

__attribute__((used)) static void qtet_akm_set_rate_val(struct snd_akm4xxx *ak, unsigned int rate)
{
 unsigned char ak4620_dfs;

 if (rate == 0)

  return;


 if (rate > 108000)
  ak4620_dfs = AK4620_DFS1 | AK4620_CKS1;
 else if (rate > 54000)
  ak4620_dfs = AK4620_DFS0 | AK4620_CKS0;
 else
  ak4620_dfs = 0;


 qtet_akm_set_regs(ak, AK4620_DFS_REG, AK4620_DFS0 | AK4620_DFS1 |
   AK4620_CKS0 | AK4620_CKS1, ak4620_dfs);
}
