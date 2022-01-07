
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voice {int flags; } ;
struct sis7019 {struct voice* voices; } ;


 int VOICE_IN_USE ;

__attribute__((used)) static struct voice *__sis_alloc_playback_voice(struct sis7019 *sis)
{

 struct voice *voice;
 int i;

 for (i = 0; i < 64; i++) {
  voice = &sis->voices[i];
  if (voice->flags & VOICE_IN_USE)
   continue;
  voice->flags |= VOICE_IN_USE;
  goto found_one;
 }
 voice = ((void*)0);

found_one:
 return voice;
}
