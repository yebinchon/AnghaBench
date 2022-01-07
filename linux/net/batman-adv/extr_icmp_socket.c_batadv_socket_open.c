
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {struct batadv_socket_client* private_data; } ;
struct batadv_socket_client {unsigned int index; int queue_wait; int lock; int bat_priv; scalar_t__ queue_len; int queue_list; } ;


 unsigned int ARRAY_SIZE (struct batadv_socket_client**) ;
 int EBUSY ;
 int ENOMEM ;
 int EXFULL ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int batadv_debugfs_deprecated (struct file*,char*) ;
 struct batadv_socket_client** batadv_socket_client_hash ;
 int init_waitqueue_head (int *) ;
 int kfree (struct batadv_socket_client*) ;
 struct batadv_socket_client* kmalloc (int,int ) ;
 int module_put (int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int stream_open (struct inode*,struct file*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int batadv_socket_open(struct inode *inode, struct file *file)
{
 unsigned int i;
 struct batadv_socket_client *socket_client;

 if (!try_module_get(THIS_MODULE))
  return -EBUSY;

 batadv_debugfs_deprecated(file, "");

 stream_open(inode, file);

 socket_client = kmalloc(sizeof(*socket_client), GFP_KERNEL);
 if (!socket_client) {
  module_put(THIS_MODULE);
  return -ENOMEM;
 }

 for (i = 0; i < ARRAY_SIZE(batadv_socket_client_hash); i++) {
  if (!batadv_socket_client_hash[i]) {
   batadv_socket_client_hash[i] = socket_client;
   break;
  }
 }

 if (i == ARRAY_SIZE(batadv_socket_client_hash)) {
  pr_err("Error - can't add another packet client: maximum number of clients reached\n");
  kfree(socket_client);
  module_put(THIS_MODULE);
  return -EXFULL;
 }

 INIT_LIST_HEAD(&socket_client->queue_list);
 socket_client->queue_len = 0;
 socket_client->index = i;
 socket_client->bat_priv = inode->i_private;
 spin_lock_init(&socket_client->lock);
 init_waitqueue_head(&socket_client->queue_wait);

 file->private_data = socket_client;

 return 0;
}
