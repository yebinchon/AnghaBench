
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback {int card; } ;
typedef int name ;


 int print_cable_info ;
 int snd_card_ro_proc_new (int ,char*,struct loopback*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int loopback_proc_new(struct loopback *loopback, int cidx)
{
 char name[32];

 snprintf(name, sizeof(name), "cable#%d", cidx);
 return snd_card_ro_proc_new(loopback->card, name, loopback,
        print_cable_info);
}
