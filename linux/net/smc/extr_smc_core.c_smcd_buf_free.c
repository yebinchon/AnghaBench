
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smcd_cdc_msg {int dummy; } ;
struct smc_link_group {int smcd; } ;
struct smc_buf_desc {int len; struct smc_buf_desc* cpu_addr; } ;


 int kfree (struct smc_buf_desc*) ;
 int smc_ism_unregister_dmb (int ,struct smc_buf_desc*) ;

__attribute__((used)) static void smcd_buf_free(struct smc_link_group *lgr, bool is_dmb,
     struct smc_buf_desc *buf_desc)
{
 if (is_dmb) {

  buf_desc->len += sizeof(struct smcd_cdc_msg);
  smc_ism_unregister_dmb(lgr->smcd, buf_desc);
 } else {
  kfree(buf_desc->cpu_addr);
 }
 kfree(buf_desc);
}
