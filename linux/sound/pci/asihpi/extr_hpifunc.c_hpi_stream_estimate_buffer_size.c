
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef long u16 ;
struct hpi_format {long channels; int format; long sample_rate; long bit_rate; } ;


 long HPI_ERROR_INVALID_FORMAT ;
 int roundup_pow_of_two (int) ;

u16 hpi_stream_estimate_buffer_size(struct hpi_format *p_format,
 u32 host_polling_rate_in_milli_seconds, u32 *recommended_buffer_size)
{

 u32 bytes_per_second;
 u32 size;
 u16 channels;
 struct hpi_format *pF = p_format;

 channels = pF->channels;

 switch (pF->format) {
 case 133:
 case 132:
  bytes_per_second = pF->sample_rate * 2L * channels;
  break;
 case 131:
  bytes_per_second = pF->sample_rate * 3L * channels;
  break;
 case 129:
 case 130:
  bytes_per_second = pF->sample_rate * 4L * channels;
  break;
 case 128:
  bytes_per_second = pF->sample_rate * 1L * channels;
  break;
 case 136:
 case 135:
 case 134:
  bytes_per_second = pF->bit_rate / 8L;
  break;
 case 137:

  bytes_per_second = 256000L / 8L;
  break;
 default:
  return HPI_ERROR_INVALID_FORMAT;
 }
 size = (bytes_per_second * host_polling_rate_in_milli_seconds * 2) /
  1000L;

 *recommended_buffer_size =
  roundup_pow_of_two(((size + 4095L) & ~4095L));
 return 0;
}
