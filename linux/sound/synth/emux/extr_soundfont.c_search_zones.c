
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int low; int high; int vellow; int velhigh; int fixkey; int start; int end; } ;
struct snd_sf_zone {TYPE_1__ v; scalar_t__ mapped; struct snd_sf_zone* next_zone; } ;
struct snd_sf_list {int dummy; } ;


 struct snd_sf_zone* search_first_zone (struct snd_sf_list*,int,int,int) ;

__attribute__((used)) static int
search_zones(struct snd_sf_list *sflist, int *notep, int vel,
      int preset, int bank, struct snd_sf_zone **table,
      int max_layers, int level)
{
 struct snd_sf_zone *zp;
 int nvoices;

 zp = search_first_zone(sflist, bank, preset, *notep);
 nvoices = 0;
 for (; zp; zp = zp->next_zone) {
  if (*notep >= zp->v.low && *notep <= zp->v.high &&
      vel >= zp->v.vellow && vel <= zp->v.velhigh) {
   if (zp->mapped) {

    int key = zp->v.fixkey;
    preset = zp->v.start;
    bank = zp->v.end;

    if (level > 5)
     return 0;
    if (key < 0)
     key = *notep;
    nvoices = search_zones(sflist, &key, vel,
             preset, bank, table,
             max_layers, level + 1);
    if (nvoices > 0)
     *notep = key;
    break;
   }
   table[nvoices++] = zp;
   if (nvoices >= max_layers)
    break;
  }
 }

 return nvoices;
}
