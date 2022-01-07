
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int digest; } ;
struct TYPE_5__ {int nr_allocated_banks; } ;


 int TPM_DIGEST_SIZE ;
 TYPE_2__* digests ;
 TYPE_1__* ima_tpm_chip ;
 int memcpy (int ,int const*,int ) ;
 int pr_err (char*,int) ;
 int tpm_pcr_extend (TYPE_1__*,int,TYPE_2__*) ;

__attribute__((used)) static int ima_pcr_extend(const u8 *hash, int pcr)
{
 int result = 0;
 int i;

 if (!ima_tpm_chip)
  return result;

 for (i = 0; i < ima_tpm_chip->nr_allocated_banks; i++)
  memcpy(digests[i].digest, hash, TPM_DIGEST_SIZE);

 result = tpm_pcr_extend(ima_tpm_chip, pcr, digests);
 if (result != 0)
  pr_err("Error Communicating to TPM chip, result: %d\n", result);
 return result;
}
