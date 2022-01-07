
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct request_sock {int const num_timeout; } ;
struct TYPE_2__ {int acked; } ;


 TYPE_1__* inet_rsk (struct request_sock*) ;

__attribute__((used)) static inline void syn_ack_recalc(struct request_sock *req, const int thresh,
      const int max_retries,
      const u8 rskq_defer_accept,
      int *expire, int *resend)
{
 if (!rskq_defer_accept) {
  *expire = req->num_timeout >= thresh;
  *resend = 1;
  return;
 }
 *expire = req->num_timeout >= thresh &&
    (!inet_rsk(req)->acked || req->num_timeout >= max_retries);





 *resend = !inet_rsk(req)->acked ||
    req->num_timeout >= rskq_defer_accept - 1;
}
