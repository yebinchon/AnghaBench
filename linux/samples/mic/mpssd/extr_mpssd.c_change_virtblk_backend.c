
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signaled; } ;
struct mic_info {TYPE_1__ mic_virtblk; struct mic_info* next; } ;
typedef int siginfo_t ;
struct TYPE_4__ {struct mic_info* next; } ;


 TYPE_2__ mic_list ;

__attribute__((used)) static void
change_virtblk_backend(int x, siginfo_t *siginfo, void *p)
{
 struct mic_info *mic;

 for (mic = mic_list.next; mic != ((void*)0); mic = mic->next)
  mic->mic_virtblk.signaled = 1 ;
}
