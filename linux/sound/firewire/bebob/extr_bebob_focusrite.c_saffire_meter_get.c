
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct snd_bebob_meter_spec {scalar_t__ labels; int num; } ;
struct snd_bebob {TYPE_1__* spec; } ;
struct TYPE_2__ {struct snd_bebob_meter_spec* meter; } ;


 int EIO ;
 int SAFFIRE_LE_OFFSET_METER ;
 int SAFFIRE_OFFSET_METER ;
 scalar_t__ saffire_le_meter_labels ;
 int saffire_read_block (struct snd_bebob*,int ,int *,unsigned int) ;
 int swap (int ,int ) ;

__attribute__((used)) static int
saffire_meter_get(struct snd_bebob *bebob, u32 *buf, unsigned int size)
{
 const struct snd_bebob_meter_spec *spec = bebob->spec->meter;
 unsigned int channels;
 u64 offset;
 int err;

 if (spec->labels == saffire_le_meter_labels)
  offset = SAFFIRE_LE_OFFSET_METER;
 else
  offset = SAFFIRE_OFFSET_METER;

 channels = spec->num * 2;
 if (size < channels * sizeof(u32))
  return -EIO;

 err = saffire_read_block(bebob, offset, buf, size);
 if (err >= 0 && spec->labels == saffire_le_meter_labels) {
  swap(buf[1], buf[3]);
  swap(buf[2], buf[3]);
  swap(buf[3], buf[4]);

  swap(buf[7], buf[10]);
  swap(buf[8], buf[10]);
  swap(buf[9], buf[11]);
  swap(buf[11], buf[12]);

  swap(buf[15], buf[16]);
 }

 return err;
}
