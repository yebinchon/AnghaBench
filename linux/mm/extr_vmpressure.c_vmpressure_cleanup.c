
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpressure {int work; } ;


 int flush_work (int *) ;

void vmpressure_cleanup(struct vmpressure *vmpr)
{




 flush_work(&vmpr->work);
}
