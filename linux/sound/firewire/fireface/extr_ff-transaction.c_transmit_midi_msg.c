
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int* rx_bytes; int * transactions; int * msg_buf; int * next_ktime; TYPE_2__* spec; int * rx_midi_work; scalar_t__* rx_midi_error; int unit; int * rx_midi_substreams; } ;
struct fw_device {int generation; int max_speed; int node_id; int card; } ;
typedef int fw_transaction_callback_t ;
struct TYPE_4__ {unsigned long long* midi_rx_addrs; TYPE_1__* protocol; } ;
struct TYPE_3__ {int (* fill_midi_msg ) (struct snd_ff*,struct snd_rawmidi_substream*,unsigned int) ;} ;


 int NSEC_PER_SEC ;
 struct snd_rawmidi_substream* READ_ONCE (int ) ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int finish_transmit_midi0_msg ;
 int finish_transmit_midi1_msg ;
 struct fw_device* fw_parent_device (int ) ;
 int fw_send_request (int ,int *,int,int ,int,int ,unsigned long long,int *,int,int ,int *) ;
 int ktime_add_ns (int ,int) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;
 int schedule_work (int *) ;
 int smp_rmb () ;
 scalar_t__ snd_rawmidi_transmit_empty (struct snd_rawmidi_substream*) ;
 int stub1 (struct snd_ff*,struct snd_rawmidi_substream*,unsigned int) ;

__attribute__((used)) static void transmit_midi_msg(struct snd_ff *ff, unsigned int port)
{
 struct snd_rawmidi_substream *substream =
   READ_ONCE(ff->rx_midi_substreams[port]);
 int quad_count;

 struct fw_device *fw_dev = fw_parent_device(ff->unit);
 unsigned long long addr;
 int generation;
 fw_transaction_callback_t callback;
 int tcode;

 if (substream == ((void*)0) || snd_rawmidi_transmit_empty(substream))
  return;

 if (ff->rx_bytes[port] > 0 || ff->rx_midi_error[port])
  return;


 if (ktime_after(ff->next_ktime[port], ktime_get())) {
  schedule_work(&ff->rx_midi_work[port]);
  return;
 }

 quad_count = ff->spec->protocol->fill_midi_msg(ff, substream, port);
 if (quad_count <= 0)
  return;

 if (port == 0) {
  addr = ff->spec->midi_rx_addrs[0];
  callback = finish_transmit_midi0_msg;
 } else {
  addr = ff->spec->midi_rx_addrs[1];
  callback = finish_transmit_midi1_msg;
 }


 ff->next_ktime[port] = ktime_add_ns(ktime_get(),
    ff->rx_bytes[port] * 8 * NSEC_PER_SEC / 31250);

 if (quad_count == 1)
  tcode = TCODE_WRITE_QUADLET_REQUEST;
 else
  tcode = TCODE_WRITE_BLOCK_REQUEST;
 generation = fw_dev->generation;
 smp_rmb();
 fw_send_request(fw_dev->card, &ff->transactions[port], tcode,
   fw_dev->node_id, generation, fw_dev->max_speed,
   addr, &ff->msg_buf[port], quad_count * 4,
   callback, &ff->transactions[port]);
}
