
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errseq_t ;


 int ERRSEQ_SEEN ;
 int READ_ONCE (int) ;

errseq_t errseq_sample(errseq_t *eseq)
{
 errseq_t old = READ_ONCE(*eseq);


 if (!(old & ERRSEQ_SEEN))
  old = 0;
 return old;
}
