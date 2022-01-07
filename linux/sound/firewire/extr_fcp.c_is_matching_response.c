
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fcp_transaction {scalar_t__* response_buffer; unsigned int response_match_bytes; } ;



__attribute__((used)) static bool is_matching_response(struct fcp_transaction *transaction,
     const void *response, size_t length)
{
 const u8 *p1, *p2;
 unsigned int mask, i;

 p1 = response;
 p2 = transaction->response_buffer;
 mask = transaction->response_match_bytes;

 for (i = 0; ; ++i) {
  if ((mask & 1) && p1[i] != p2[i])
   return 0;
  mask >>= 1;
  if (!mask)
   return 1;
  if (--length == 0)
   return 0;
 }
}
