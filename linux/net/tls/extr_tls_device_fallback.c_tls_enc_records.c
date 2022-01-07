
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;


 int cpu_to_be64 (int ) ;
 int scatterwalk_done (struct scatter_walk*,int,int ) ;
 int scatterwalk_start (struct scatter_walk*,struct scatterlist*) ;
 int tls_enc_record (struct aead_request*,struct crypto_aead*,char*,char*,int ,struct scatter_walk*,struct scatter_walk*,int*) ;

__attribute__((used)) static int tls_enc_records(struct aead_request *aead_req,
      struct crypto_aead *aead, struct scatterlist *sg_in,
      struct scatterlist *sg_out, char *aad, char *iv,
      u64 rcd_sn, int len)
{
 struct scatter_walk out, in;
 int rc;

 scatterwalk_start(&in, sg_in);
 scatterwalk_start(&out, sg_out);

 do {
  rc = tls_enc_record(aead_req, aead, aad, iv,
        cpu_to_be64(rcd_sn), &in, &out, &len);
  rcd_sn++;

 } while (rc == 0 && len);

 scatterwalk_done(&in, 0, 0);
 scatterwalk_done(&out, 1, 0);

 return rc;
}
