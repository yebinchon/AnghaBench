
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ml403_ac97cr {scalar_t__ irq; scalar_t__ capture_irq; int port; } ;


 int INIT_INFO ;
 int PDEBUG (int ,char*) ;
 int free_irq (scalar_t__,struct snd_ml403_ac97cr*) ;
 int iounmap (int ) ;
 int kfree (struct snd_ml403_ac97cr*) ;

__attribute__((used)) static int snd_ml403_ac97cr_free(struct snd_ml403_ac97cr *ml403_ac97cr)
{
 PDEBUG(INIT_INFO, "free():\n");

 if (ml403_ac97cr->irq >= 0)
  free_irq(ml403_ac97cr->irq, ml403_ac97cr);
 if (ml403_ac97cr->capture_irq >= 0)
  free_irq(ml403_ac97cr->capture_irq, ml403_ac97cr);

 iounmap(ml403_ac97cr->port);
 kfree(ml403_ac97cr);
 PDEBUG(INIT_INFO, "free(): (done)\n");
 return 0;
}
