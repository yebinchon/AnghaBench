
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_queue {int dummy; } ;


 int free (struct arm_spe_queue*) ;

__attribute__((used)) static void arm_spe_free_queue(void *priv)
{
 struct arm_spe_queue *speq = priv;

 if (!speq)
  return;
 free(speq);
}
