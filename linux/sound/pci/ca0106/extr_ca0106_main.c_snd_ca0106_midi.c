
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca_midi {unsigned int channel; struct snd_ca0106* dev_id; int get_dev_id_port; int get_dev_id_card; int write; int read; int interrupt_disable; int interrupt_enable; int output_ready; int input_avail; int ack; int enter_uart; int reset; int port; int ipr_rx; int ipr_tx; void* rx_enable; void* tx_enable; } ;
struct snd_ca0106 {struct snd_ca_midi midi; struct snd_ca_midi midi2; } ;


 unsigned int CA0106_MIDI_CHAN_B ;
 int CA0106_MIDI_INPUT_AVAIL ;
 int CA0106_MIDI_OUTPUT_READY ;
 int CA0106_MPU401_ACK ;
 int CA0106_MPU401_ENTER_UART ;
 int CA0106_MPU401_RESET ;
 void* INTE_MIDI_RX_B ;
 void* INTE_MIDI_TX_A ;
 void* INTE_MIDI_TX_B ;
 int IPR_MIDI_RX_A ;
 int IPR_MIDI_RX_B ;
 int IPR_MIDI_TX_A ;
 int IPR_MIDI_TX_B ;
 int MIDI_UART_A_DATA ;
 int MIDI_UART_B_DATA ;
 int ca0106_dev_id_card ;
 int ca0106_dev_id_port ;
 int ca0106_midi_interrupt_disable ;
 int ca0106_midi_interrupt_enable ;
 int ca0106_midi_read ;
 int ca0106_midi_write ;
 int ca_midi_init (struct snd_ca0106*,struct snd_ca_midi*,int ,char*) ;

__attribute__((used)) static int snd_ca0106_midi(struct snd_ca0106 *chip, unsigned int channel)
{
 struct snd_ca_midi *midi;
 char *name;
 int err;

 if (channel == CA0106_MIDI_CHAN_B) {
  name = "CA0106 MPU-401 (UART) B";
  midi = &chip->midi2;
  midi->tx_enable = INTE_MIDI_TX_B;
  midi->rx_enable = INTE_MIDI_RX_B;
  midi->ipr_tx = IPR_MIDI_TX_B;
  midi->ipr_rx = IPR_MIDI_RX_B;
  midi->port = MIDI_UART_B_DATA;
 } else {
  name = "CA0106 MPU-401 (UART)";
  midi = &chip->midi;
  midi->tx_enable = INTE_MIDI_TX_A;
  midi->rx_enable = INTE_MIDI_TX_B;
  midi->ipr_tx = IPR_MIDI_TX_A;
  midi->ipr_rx = IPR_MIDI_RX_A;
  midi->port = MIDI_UART_A_DATA;
 }

 midi->reset = CA0106_MPU401_RESET;
 midi->enter_uart = CA0106_MPU401_ENTER_UART;
 midi->ack = CA0106_MPU401_ACK;

 midi->input_avail = CA0106_MIDI_INPUT_AVAIL;
 midi->output_ready = CA0106_MIDI_OUTPUT_READY;

 midi->channel = channel;

 midi->interrupt_enable = ca0106_midi_interrupt_enable;
 midi->interrupt_disable = ca0106_midi_interrupt_disable;

 midi->read = ca0106_midi_read;
 midi->write = ca0106_midi_write;

 midi->get_dev_id_card = ca0106_dev_id_card;
 midi->get_dev_id_port = ca0106_dev_id_port;

 midi->dev_id = chip;

 if ((err = ca_midi_init(chip, midi, 0, name)) < 0)
  return err;

 return 0;
}
