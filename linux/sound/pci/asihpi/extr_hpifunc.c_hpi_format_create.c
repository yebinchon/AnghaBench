
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
typedef int u16 ;
struct hpi_msg_format {int channels; int format; long sample_rate; long bit_rate; long attributes; } ;
struct hpi_format {int dummy; } ;


 int HPI_ERROR_INCOMPATIBLE_SAMPLERATE ;
 int HPI_ERROR_INVALID_CHANNELS ;
 int HPI_ERROR_INVALID_FORMAT ;
 long HPI_MPEG_MODE_DEFAULT ;
 long HPI_MPEG_MODE_DUALCHANNEL ;
 int hpi_msg_to_format (struct hpi_format*,struct hpi_msg_format*) ;

u16 hpi_format_create(struct hpi_format *p_format, u16 channels, u16 format,
 u32 sample_rate, u32 bit_rate, u32 attributes)
{
 u16 err = 0;
 struct hpi_msg_format fmt;

 switch (channels) {
 case 1:
 case 2:
 case 4:
 case 6:
 case 8:
 case 16:
  break;
 default:
  err = HPI_ERROR_INVALID_CHANNELS;
  return err;
 }
 fmt.channels = channels;

 switch (format) {
 case 133:
 case 132:
 case 130:
 case 131:
 case 134:
 case 129:
 case 139:
 case 138:
 case 137:
 case 140:
 case 143:
 case 141:
 case 128:
 case 142:
 case 136:
 case 135:
  break;
 default:
  err = HPI_ERROR_INVALID_FORMAT;
  return err;
 }
 fmt.format = format;

 if (sample_rate < 8000L) {
  err = HPI_ERROR_INCOMPATIBLE_SAMPLERATE;
  sample_rate = 8000L;
 }
 if (sample_rate > 200000L) {
  err = HPI_ERROR_INCOMPATIBLE_SAMPLERATE;
  sample_rate = 200000L;
 }
 fmt.sample_rate = sample_rate;

 switch (format) {
 case 139:
 case 138:
 case 137:
  fmt.bit_rate = bit_rate;
  break;
 case 133:
 case 134:
  fmt.bit_rate = channels * sample_rate * 2;
  break;
 case 130:
 case 131:
  fmt.bit_rate = channels * sample_rate * 4;
  break;
 case 129:
  fmt.bit_rate = channels * sample_rate;
  break;
 default:
  fmt.bit_rate = 0;
 }

 switch (format) {
 case 138:
  if ((channels == 1)
   && (attributes != HPI_MPEG_MODE_DEFAULT)) {
   attributes = HPI_MPEG_MODE_DEFAULT;
   err = HPI_ERROR_INVALID_FORMAT;
  } else if (attributes > HPI_MPEG_MODE_DUALCHANNEL) {
   attributes = HPI_MPEG_MODE_DEFAULT;
   err = HPI_ERROR_INVALID_FORMAT;
  }
  fmt.attributes = attributes;
  break;
 default:
  fmt.attributes = attributes;
 }

 hpi_msg_to_format(p_format, &fmt);
 return err;
}
