
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_link {int ml_addr; } ;


 int AZX_REG_ML_LOSIDV ;
 int snd_hdac_updatew (int ,int ,int,int) ;

void snd_hdac_ext_link_set_stream_id(struct hdac_ext_link *link,
     int stream)
{
 snd_hdac_updatew(link->ml_addr, AZX_REG_ML_LOSIDV, (1 << stream), 1 << stream);
}
