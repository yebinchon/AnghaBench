
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct midi_buffer {int size; size_t pos_read; int* buf; int command_prev; scalar_t__ full; int split; } ;


 int EINVAL ;
 int line6_midibuf_bytes_used (struct midi_buffer*) ;
 int memcpy (unsigned char*,int*,int) ;
 scalar_t__ midibuf_is_empty (struct midi_buffer*) ;
 int midibuf_message_length (int) ;

int line6_midibuf_read(struct midi_buffer *this, unsigned char *data,
         int length)
{
 int bytes_used;
 int length1, length2;
 int command;
 int midi_length;
 int repeat = 0;
 int i;


 if (length < 3)
  return -EINVAL;

 if (midibuf_is_empty(this))
  return 0;

 bytes_used = line6_midibuf_bytes_used(this);

 if (length > bytes_used)
  length = bytes_used;

 length1 = this->size - this->pos_read;


 command = this->buf[this->pos_read];

 if (command & 0x80) {
  midi_length = midibuf_message_length(command);
  this->command_prev = command;
 } else {
  if (this->command_prev > 0) {
   int midi_length_prev =
       midibuf_message_length(this->command_prev);

   if (midi_length_prev > 0) {
    midi_length = midi_length_prev - 1;
    repeat = 1;
   } else
    midi_length = -1;
  } else
   midi_length = -1;
 }

 if (midi_length < 0) {

  if (length < length1) {

   for (i = 1; i < length; ++i)
    if (this->buf[this->pos_read + i] & 0x80)
     break;

   midi_length = i;
  } else {

   length2 = length - length1;

   for (i = 1; i < length1; ++i)
    if (this->buf[this->pos_read + i] & 0x80)
     break;

   if (i < length1)
    midi_length = i;
   else {
    for (i = 0; i < length2; ++i)
     if (this->buf[i] & 0x80)
      break;

    midi_length = length1 + i;
   }
  }

  if (midi_length == length)
   midi_length = -1;
 }

 if (midi_length < 0) {
  if (!this->split)
   return 0;
 } else {
  if (length < midi_length)
   return 0;

  length = midi_length;
 }

 if (length < length1) {

  memcpy(data + repeat, this->buf + this->pos_read, length);
  this->pos_read += length;
 } else {

  length2 = length - length1;
  memcpy(data + repeat, this->buf + this->pos_read, length1);
  memcpy(data + repeat + length1, this->buf, length2);
  this->pos_read = length2;
 }

 if (repeat)
  data[0] = this->command_prev;

 this->full = 0;
 return length + repeat;
}
