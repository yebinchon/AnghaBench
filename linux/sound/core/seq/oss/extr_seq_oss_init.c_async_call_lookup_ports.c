
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int snd_seq_oss_midi_lookup_ports (int ) ;
 int system_client ;

__attribute__((used)) static void async_call_lookup_ports(struct work_struct *work)
{
 snd_seq_oss_midi_lookup_ports(system_client);
}
