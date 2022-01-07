
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_chan {int inuse; } ;
struct p9_client {struct virtio_chan* trans; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtio_9p_lock ;

__attribute__((used)) static void p9_virtio_close(struct p9_client *client)
{
 struct virtio_chan *chan = client->trans;

 mutex_lock(&virtio_9p_lock);
 if (chan)
  chan->inuse = 0;
 mutex_unlock(&virtio_9p_lock);
}
