
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int * maudio_special_quirk; int out_conn; int in_conn; } ;


 int cmp_connection_break (int *) ;
 int msleep (int) ;

__attribute__((used)) static void
break_both_connections(struct snd_bebob *bebob)
{
 cmp_connection_break(&bebob->in_conn);
 cmp_connection_break(&bebob->out_conn);


 if (bebob->maudio_special_quirk != ((void*)0))
  msleep(200);
}
