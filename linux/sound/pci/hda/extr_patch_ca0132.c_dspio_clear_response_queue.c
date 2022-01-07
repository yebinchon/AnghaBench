
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int dspio_read (struct hda_codec*,unsigned int*) ;

__attribute__((used)) static void dspio_clear_response_queue(struct hda_codec *codec)
{
 unsigned int dummy = 0;
 int status = -1;


 do {
  status = dspio_read(codec, &dummy);
 } while (status == 0);
}
