
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct tpm_buf {int * data; } ;
struct osapsess {unsigned char* enonce; int secret; int handle; } ;


 int INIT_BUF (struct tpm_buf*) ;
 int LOAD32 (int *,int) ;
 int MAX_BUF_SIZE ;
 int SHA1_DIGEST_SIZE ;
 int TPM_DATA_OFFSET ;
 int TPM_NONCE_SIZE ;
 int TPM_ORD_OSAP ;
 int TPM_OSAP_SIZE ;
 int TPM_TAG_RQU_COMMAND ;
 int TSS_rawhmac (int ,unsigned char const*,int ,int,unsigned char*,int,unsigned char*,int ,int ) ;
 int chip ;
 int memcpy (unsigned char*,int *,int) ;
 int store16 (struct tpm_buf*,int ) ;
 int store32 (struct tpm_buf*,int ) ;
 int storebytes (struct tpm_buf*,unsigned char*,int) ;
 int tpm_get_random (int ,unsigned char*,int) ;
 int trusted_tpm_send (int *,int ) ;

__attribute__((used)) static int osap(struct tpm_buf *tb, struct osapsess *s,
  const unsigned char *key, uint16_t type, uint32_t handle)
{
 unsigned char enonce[TPM_NONCE_SIZE];
 unsigned char ononce[TPM_NONCE_SIZE];
 int ret;

 ret = tpm_get_random(chip, ononce, TPM_NONCE_SIZE);
 if (ret != TPM_NONCE_SIZE)
  return ret;

 INIT_BUF(tb);
 store16(tb, TPM_TAG_RQU_COMMAND);
 store32(tb, TPM_OSAP_SIZE);
 store32(tb, TPM_ORD_OSAP);
 store16(tb, type);
 store32(tb, handle);
 storebytes(tb, ononce, TPM_NONCE_SIZE);

 ret = trusted_tpm_send(tb->data, MAX_BUF_SIZE);
 if (ret < 0)
  return ret;

 s->handle = LOAD32(tb->data, TPM_DATA_OFFSET);
 memcpy(s->enonce, &(tb->data[TPM_DATA_OFFSET + sizeof(uint32_t)]),
        TPM_NONCE_SIZE);
 memcpy(enonce, &(tb->data[TPM_DATA_OFFSET + sizeof(uint32_t) +
      TPM_NONCE_SIZE]), TPM_NONCE_SIZE);
 return TSS_rawhmac(s->secret, key, SHA1_DIGEST_SIZE, TPM_NONCE_SIZE,
      enonce, TPM_NONCE_SIZE, ononce, 0, 0);
}
