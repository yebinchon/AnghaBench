
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_codec {int * gpio; int * soundbus_dev; } ;


 int MAX_CODECS_PER_BUS ;

__attribute__((used)) static void layout_remove_codec(struct aoa_codec *codec)
{
 int i;



 codec->soundbus_dev = ((void*)0);
 codec->gpio = ((void*)0);
 for (i=0; i<MAX_CODECS_PER_BUS; i++) {
 }
}
