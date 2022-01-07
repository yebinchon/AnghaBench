
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_bts_queue {int dummy; } ;


 int free (struct intel_bts_queue*) ;

__attribute__((used)) static void intel_bts_free_queue(void *priv)
{
 struct intel_bts_queue *btsq = priv;

 if (!btsq)
  return;
 free(btsq);
}
