
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int chip ;
 int digests ;
 scalar_t__ tpm_pcr_extend (int ,int const,int ) ;

__attribute__((used)) static int pcrlock(const int pcrnum)
{
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return tpm_pcr_extend(chip, pcrnum, digests) ? -EINVAL : 0;
}
