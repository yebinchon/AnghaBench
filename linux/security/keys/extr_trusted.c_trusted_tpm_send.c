
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int EPERM ;
 int chip ;
 int dump_tpm_buf (unsigned char*) ;
 int tpm_send (int ,unsigned char*,size_t) ;

int trusted_tpm_send(unsigned char *cmd, size_t buflen)
{
 int rc;

 if (!chip)
  return -ENODEV;

 dump_tpm_buf(cmd);
 rc = tpm_send(chip, cmd, buflen);
 dump_tpm_buf(cmd);
 if (rc > 0)

  rc = -EPERM;
 return rc;
}
