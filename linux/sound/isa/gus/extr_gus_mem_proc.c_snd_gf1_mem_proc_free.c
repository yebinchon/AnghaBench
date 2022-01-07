
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct gus_proc_private* private_data; } ;
struct gus_proc_private {int dummy; } ;


 int kfree (struct gus_proc_private*) ;

__attribute__((used)) static void snd_gf1_mem_proc_free(struct snd_info_entry *entry)
{
 struct gus_proc_private *priv = entry->private_data;
 kfree(priv);
}
