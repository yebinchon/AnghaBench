
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int dspio_set_param (struct hda_codec*,int,int,int,unsigned int const*,int) ;

__attribute__((used)) static int dspio_set_uint_param_no_source(struct hda_codec *codec, int mod_id,
   int req, const unsigned int data)
{
 return dspio_set_param(codec, mod_id, 0x00, req, &data,
   sizeof(unsigned int));
}
