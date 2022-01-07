
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_info {int name; int init_thread; struct mic_info* next; } ;
struct TYPE_2__ {struct mic_info* next; } ;


 int init_mic ;
 TYPE_1__ mic_list ;
 int mpsslog (char*,int ,int ) ;
 int pthread_create (int *,int *,int ,struct mic_info*) ;
 int set_mic_boot_params (struct mic_info*) ;
 int sleep (int) ;
 int strerror (int) ;

__attribute__((used)) static void
start_daemon(void)
{
 struct mic_info *mic;
 int err;

 for (mic = mic_list.next; mic; mic = mic->next) {
  set_mic_boot_params(mic);
  err = pthread_create(&mic->init_thread, ((void*)0), init_mic, mic);
  if (err)
   mpsslog("%s init_mic pthread_create failed %s\n",
    mic->name, strerror(err));
 }

 while (1)
  sleep(60);
}
