
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errseq_t ;


 int ERRSEQ_SEEN ;
 int MAX_ERRNO ;
 int READ_ONCE (int) ;
 int cmpxchg (int*,int,int) ;

int errseq_check_and_advance(errseq_t *eseq, errseq_t *since)
{
 int err = 0;
 errseq_t old, new;






 old = READ_ONCE(*eseq);
 if (old != *since) {
  new = old | ERRSEQ_SEEN;
  if (new != old)
   cmpxchg(eseq, old, new);
  *since = new;
  err = -(new & MAX_ERRNO);
 }
 return err;
}
