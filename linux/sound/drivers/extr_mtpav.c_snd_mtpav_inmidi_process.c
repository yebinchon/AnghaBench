
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtpav_port {int mode; int input; } ;
struct mtpav {size_t inmidiport; int num_ports; struct mtpav_port* ports; } ;


 int MTPAV_MODE_INPUT_TRIGGERED ;
 int MTPAV_PIDX_BROADCAST ;
 int snd_rawmidi_receive (int ,int *,int) ;

__attribute__((used)) static void snd_mtpav_inmidi_process(struct mtpav *mcrd, u8 inbyte)
{
 struct mtpav_port *portp;

 if ((int)mcrd->inmidiport > mcrd->num_ports * 2 + MTPAV_PIDX_BROADCAST)
  return;

 portp = &mcrd->ports[mcrd->inmidiport];
 if (portp->mode & MTPAV_MODE_INPUT_TRIGGERED)
  snd_rawmidi_receive(portp->input, &inbyte, 1);
}
