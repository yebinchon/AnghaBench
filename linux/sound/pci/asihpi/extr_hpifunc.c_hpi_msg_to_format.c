
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_msg_format {int format; int channels; int attributes; int bit_rate; int sample_rate; } ;
struct hpi_format {scalar_t__ unused; scalar_t__ mode_legacy; int format; int channels; int attributes; int bit_rate; int sample_rate; } ;



__attribute__((used)) static void hpi_msg_to_format(struct hpi_format *pF,
 struct hpi_msg_format *pMF)
{
 pF->sample_rate = pMF->sample_rate;
 pF->bit_rate = pMF->bit_rate;
 pF->attributes = pMF->attributes;
 pF->channels = pMF->channels;
 pF->format = pMF->format;
 pF->mode_legacy = 0;
 pF->unused = 0;
}
