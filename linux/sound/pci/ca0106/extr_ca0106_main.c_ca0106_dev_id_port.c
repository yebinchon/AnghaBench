
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca0106 {int port; } ;



__attribute__((used)) static int ca0106_dev_id_port(void *dev_id)
{
 return ((struct snd_ca0106 *)dev_id)->port;
}
