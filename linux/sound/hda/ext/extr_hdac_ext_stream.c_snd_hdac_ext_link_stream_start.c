
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_stream {int pplc_addr; } ;


 int AZX_PPLCCTL_RUN ;
 int AZX_REG_PPLCCTL ;
 int snd_hdac_updatel (int ,int ,int ,int ) ;

void snd_hdac_ext_link_stream_start(struct hdac_ext_stream *stream)
{
 snd_hdac_updatel(stream->pplc_addr, AZX_REG_PPLCCTL,
    AZX_PPLCCTL_RUN, AZX_PPLCCTL_RUN);
}
