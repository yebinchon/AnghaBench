
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_buf {int * data; } ;


 int ENODEV ;
 int INIT_BUF (struct tpm_buf*) ;
 int LOAD32 (int *,int) ;
 int MAX_BUF_SIZE ;
 int TPM_DATA_OFFSET ;
 int TPM_NONCE_SIZE ;
 int TPM_OIAP_SIZE ;
 int TPM_ORD_OIAP ;
 int TPM_TAG_RQU_COMMAND ;
 int chip ;
 int memcpy (unsigned char*,int *,int ) ;
 int store16 (struct tpm_buf*,int ) ;
 int store32 (struct tpm_buf*,int ) ;
 int trusted_tpm_send (int *,int ) ;

int oiap(struct tpm_buf *tb, uint32_t *handle, unsigned char *nonce)
{
 int ret;

 if (!chip)
  return -ENODEV;

 INIT_BUF(tb);
 store16(tb, TPM_TAG_RQU_COMMAND);
 store32(tb, TPM_OIAP_SIZE);
 store32(tb, TPM_ORD_OIAP);
 ret = trusted_tpm_send(tb->data, MAX_BUF_SIZE);
 if (ret < 0)
  return ret;

 *handle = LOAD32(tb->data, TPM_DATA_OFFSET);
 memcpy(nonce, &tb->data[TPM_DATA_OFFSET + sizeof(uint32_t)],
        TPM_NONCE_SIZE);
 return 0;
}
