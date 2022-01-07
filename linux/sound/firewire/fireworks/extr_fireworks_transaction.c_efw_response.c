
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_efw_transaction {int seqnum; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;


 unsigned long long MEMORY_SPACE_EFW_RESPONSE ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_DATA_ERROR ;
 int RCODE_TYPE_ERROR ;
 scalar_t__ SND_EFW_TRANSACTION_USER_SEQNUM_MAX ;
 scalar_t__ be32_to_cpu (int ) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int) ;
 int handle_resp_for_kernel (struct fw_card*,int,int,void*,size_t,int*,scalar_t__) ;
 int handle_resp_for_user (struct fw_card*,int,int,void*,size_t,int*) ;
 scalar_t__ snd_efw_resp_buf_debug ;

__attribute__((used)) static void
efw_response(struct fw_card *card, struct fw_request *request,
      int tcode, int destination, int source,
      int generation, unsigned long long offset,
      void *data, size_t length, void *callback_data)
{
 int rcode, dummy;
 u32 seqnum;

 rcode = RCODE_TYPE_ERROR;
 if (length < sizeof(struct snd_efw_transaction)) {
  rcode = RCODE_DATA_ERROR;
  goto end;
 } else if (offset != MEMORY_SPACE_EFW_RESPONSE) {
  rcode = RCODE_ADDRESS_ERROR;
  goto end;
 }

 seqnum = be32_to_cpu(((struct snd_efw_transaction *)data)->seqnum);
 if (seqnum > SND_EFW_TRANSACTION_USER_SEQNUM_MAX + 1) {
  handle_resp_for_kernel(card, generation, source,
           data, length, &rcode, seqnum);
  if (snd_efw_resp_buf_debug)
   handle_resp_for_user(card, generation, source,
          data, length, &dummy);
 } else {
  handle_resp_for_user(card, generation, source,
         data, length, &rcode);
 }
end:
 fw_send_response(card, request, rcode);
}
