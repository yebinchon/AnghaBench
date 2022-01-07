
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int host_offset; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static size_t sof_trace_avail(struct snd_sof_dev *sdev,
         loff_t pos, size_t buffer_size)
{
 loff_t host_offset = READ_ONCE(sdev->host_offset);






 if (host_offset < pos)
  return buffer_size - pos;


 if (host_offset > pos)
  return host_offset - pos;

 return 0;
}
