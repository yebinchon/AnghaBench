
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sctp_transport {int dummy; } ;


 struct sctp_transport* sctp_trans_elect_tie (struct sctp_transport*,struct sctp_transport*) ;
 scalar_t__ sctp_trans_score (struct sctp_transport*) ;

__attribute__((used)) static struct sctp_transport *sctp_trans_elect_best(struct sctp_transport *curr,
          struct sctp_transport *best)
{
 u8 score_curr, score_best;

 if (best == ((void*)0) || curr == best)
  return curr;

 score_curr = sctp_trans_score(curr);
 score_best = sctp_trans_score(best);





 if (score_curr > score_best)
  return curr;
 else if (score_curr == score_best)
  return sctp_trans_elect_tie(best, curr);
 else
  return best;
}
