
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_msg_format {int format; int channels; int attributes; int bit_rate; int sample_rate; } ;
struct hpi_format {int format; int channels; int attributes; int bit_rate; int sample_rate; } ;



void hpi_format_to_msg(struct hpi_msg_format *pMF,
 const struct hpi_format *pF)
{
 pMF->sample_rate = pF->sample_rate;
 pMF->bit_rate = pF->bit_rate;
 pMF->attributes = pF->attributes;
 pMF->channels = pF->channels;
 pMF->format = pF->format;
}
