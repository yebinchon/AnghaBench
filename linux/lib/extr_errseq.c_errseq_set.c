
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errseq_t ;


 int BUILD_BUG_ON_NOT_POWER_OF_2 (int) ;
 scalar_t__ ERRSEQ_CTR_INC ;
 int ERRSEQ_SEEN ;
 int MAX_ERRNO ;
 int READ_ONCE (int) ;
 scalar_t__ WARN (int ,char*,int) ;
 int cmpxchg (int*,int,int) ;
 scalar_t__ likely (int) ;
 int unlikely (int) ;

errseq_t errseq_set(errseq_t *eseq, int err)
{
 errseq_t cur, old;


 BUILD_BUG_ON_NOT_POWER_OF_2(MAX_ERRNO + 1);







 old = READ_ONCE(*eseq);

 if (WARN(unlikely(err == 0 || (unsigned int)-err > MAX_ERRNO),
    "err = %d\n", err))
  return old;

 for (;;) {
  errseq_t new;


  new = (old & ~(MAX_ERRNO|ERRSEQ_SEEN)) | -err;


  if (old & ERRSEQ_SEEN)
   new += ERRSEQ_CTR_INC;


  if (new == old) {
   cur = new;
   break;
  }


  cur = cmpxchg(eseq, old, new);





  if (likely(cur == old || cur == new))
   break;


  old = cur;
 }
 return cur;
}
