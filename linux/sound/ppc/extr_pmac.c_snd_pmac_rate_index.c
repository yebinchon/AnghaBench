
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {unsigned int* freq_table; int num_freqs; } ;
struct pmac_stream {int cur_freqs; } ;



unsigned int snd_pmac_rate_index(struct snd_pmac *chip, struct pmac_stream *rec, unsigned int rate)
{
 int i, ok, found;

 ok = rec->cur_freqs;
 if (rate > chip->freq_table[0])
  return 0;
 found = 0;
 for (i = 0; i < chip->num_freqs; i++, ok >>= 1) {
  if (! (ok & 1)) continue;
  found = i;
  if (rate >= chip->freq_table[i])
   break;
 }
 return found;
}
