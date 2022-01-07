
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct path {int dummy; } ;
struct TYPE_2__ {int ** data; } ;
struct key_preparsed_payload {size_t datalen; int quotalen; int data; TYPE_1__ payload; } ;
struct file {struct path f_path; } ;
struct big_key_buf {void* virt; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int BIG_KEY_ENC ;
 size_t BIG_KEY_FILE_THRESHOLD ;
 int EINVAL ;
 size_t ENC_AUTHTAG_SIZE ;
 size_t ENC_KEY_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 struct big_key_buf* big_key_alloc_buffer (size_t) ;
 int big_key_crypt (int ,struct big_key_buf*,size_t,int *) ;
 size_t big_key_data ;
 int big_key_free_buffer (struct big_key_buf*) ;
 size_t big_key_len ;
 size_t big_key_path ;
 int fput (struct file*) ;
 int get_random_bytes_wait (int *,size_t) ;
 size_t kernel_write (struct file*,void*,size_t,int *) ;
 void* kmalloc (size_t,int ) ;
 int kzfree (int *) ;
 int memcpy (void*,int ,size_t) ;
 int path_get (struct path*) ;
 struct file* shmem_kernel_file_setup (char*,size_t,int ) ;
 scalar_t__ unlikely (int) ;

int big_key_preparse(struct key_preparsed_payload *prep)
{
 struct big_key_buf *buf;
 struct path *path = (struct path *)&prep->payload.data[big_key_path];
 struct file *file;
 u8 *enckey;
 ssize_t written;
 size_t datalen = prep->datalen, enclen = datalen + ENC_AUTHTAG_SIZE;
 int ret;

 if (datalen <= 0 || datalen > 1024 * 1024 || !prep->data)
  return -EINVAL;


 prep->quotalen = 16;

 prep->payload.data[big_key_len] = (void *)(unsigned long)datalen;

 if (datalen > BIG_KEY_FILE_THRESHOLD) {





  loff_t pos = 0;

  buf = big_key_alloc_buffer(enclen);
  if (!buf)
   return -ENOMEM;
  memcpy(buf->virt, prep->data, datalen);


  enckey = kmalloc(ENC_KEY_SIZE, GFP_KERNEL);
  if (!enckey) {
   ret = -ENOMEM;
   goto error;
  }
  ret = get_random_bytes_wait(enckey, ENC_KEY_SIZE);
  if (unlikely(ret))
   goto err_enckey;


  ret = big_key_crypt(BIG_KEY_ENC, buf, datalen, enckey);
  if (ret)
   goto err_enckey;


  file = shmem_kernel_file_setup("", enclen, 0);
  if (IS_ERR(file)) {
   ret = PTR_ERR(file);
   goto err_enckey;
  }

  written = kernel_write(file, buf->virt, enclen, &pos);
  if (written != enclen) {
   ret = written;
   if (written >= 0)
    ret = -ENOMEM;
   goto err_fput;
  }




  prep->payload.data[big_key_data] = enckey;
  *path = file->f_path;
  path_get(path);
  fput(file);
  big_key_free_buffer(buf);
 } else {

  void *data = kmalloc(datalen, GFP_KERNEL);

  if (!data)
   return -ENOMEM;

  prep->payload.data[big_key_data] = data;
  memcpy(data, prep->data, prep->datalen);
 }
 return 0;

err_fput:
 fput(file);
err_enckey:
 kzfree(enckey);
error:
 big_key_free_buffer(buf);
 return ret;
}
