
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errseq_t ;


 int MAX_ERRNO ;
 int READ_ONCE (int) ;
 scalar_t__ likely (int) ;

int errseq_check(errseq_t *eseq, errseq_t since)
{
 errseq_t cur = READ_ONCE(*eseq);

 if (likely(cur == since))
  return 0;
 return -(cur & MAX_ERRNO);
}
