
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_widget {TYPE_2__* dapm; int dirty; int name; } ;
struct TYPE_4__ {TYPE_1__* card; int dev; } ;
struct TYPE_3__ {int dapm_dirty; } ;


 int dapm_assert_locked (TYPE_2__*) ;
 int dapm_dirty_widget (struct snd_soc_dapm_widget*) ;
 int dev_vdbg (int ,char*,int ,char const*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void dapm_mark_dirty(struct snd_soc_dapm_widget *w, const char *reason)
{
 dapm_assert_locked(w->dapm);

 if (!dapm_dirty_widget(w)) {
  dev_vdbg(w->dapm->dev, "Marking %s dirty due to %s\n",
    w->name, reason);
  list_add_tail(&w->dirty, &w->dapm->card->dapm_dirty);
 }
}
