
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hpi_hostbuffer_status {scalar_t__ host_index; scalar_t__ dsp_index; } ;



__attribute__((used)) static u32 instream_get_bytes_available(struct hpi_hostbuffer_status *status)
{
 return status->dsp_index - status->host_index;
}
