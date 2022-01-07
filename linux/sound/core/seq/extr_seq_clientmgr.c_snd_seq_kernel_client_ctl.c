
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client {int dummy; } ;
struct ioctl_handler {unsigned int cmd; int (* func ) (struct snd_seq_client*,void*) ;} ;


 int ENOTTY ;
 int ENXIO ;
 int _IOC_NR (unsigned int) ;
 int _IOC_TYPE (unsigned int) ;
 struct snd_seq_client* clientptr (int) ;
 struct ioctl_handler* ioctl_handlers ;
 int pr_debug (char*,unsigned int,int ,int ) ;
 int stub1 (struct snd_seq_client*,void*) ;

int snd_seq_kernel_client_ctl(int clientid, unsigned int cmd, void *arg)
{
 const struct ioctl_handler *handler;
 struct snd_seq_client *client;

 client = clientptr(clientid);
 if (client == ((void*)0))
  return -ENXIO;

 for (handler = ioctl_handlers; handler->cmd > 0; ++handler) {
  if (handler->cmd == cmd)
   return handler->func(client, arg);
 }

 pr_debug("ALSA: seq unknown ioctl() 0x%x (type='%c', number=0x%02x)\n",
   cmd, _IOC_TYPE(cmd), _IOC_NR(cmd));
 return -ENOTTY;
}
