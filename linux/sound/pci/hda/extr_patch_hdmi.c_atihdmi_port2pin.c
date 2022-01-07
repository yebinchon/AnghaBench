
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;



__attribute__((used)) static int atihdmi_port2pin(struct hda_codec *codec, int port)
{
 return port * 2 + 3;
}
