
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_efw* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_efw {scalar_t__ pull_ptr; scalar_t__ push_ptr; } ;


 unsigned int snd_efw_resp_buf_size ;
 int snd_iprintf (struct snd_info_buffer*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void
proc_read_queues_state(struct snd_info_entry *entry,
         struct snd_info_buffer *buffer)
{
 struct snd_efw *efw = entry->private_data;
 unsigned int consumed;

 if (efw->pull_ptr > efw->push_ptr)
  consumed = snd_efw_resp_buf_size -
      (unsigned int)(efw->pull_ptr - efw->push_ptr);
 else
  consumed = (unsigned int)(efw->push_ptr - efw->pull_ptr);

 snd_iprintf(buffer, "%d/%d\n",
      consumed, snd_efw_resp_buf_size);
}
