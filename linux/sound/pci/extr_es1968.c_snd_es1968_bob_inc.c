
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {int bobclient; int bob_freq; } ;


 int snd_es1968_bob_start (struct es1968*) ;
 int snd_es1968_bob_stop (struct es1968*) ;

__attribute__((used)) static void snd_es1968_bob_inc(struct es1968 *chip, int freq)
{
 chip->bobclient++;
 if (chip->bobclient == 1) {
  chip->bob_freq = freq;
  snd_es1968_bob_start(chip);
 } else if (chip->bob_freq < freq) {
  snd_es1968_bob_stop(chip);
  chip->bob_freq = freq;
  snd_es1968_bob_start(chip);
 }
}
