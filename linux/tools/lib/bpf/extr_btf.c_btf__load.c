
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int fd; int data_size; int data; } ;
typedef int __u32 ;


 int BPF_LOG_BUF_SIZE ;
 int EEXIST ;
 int ENOMEM ;
 int bpf_load_btf (int ,int ,char*,int ,int) ;
 int errno ;
 int free (char*) ;
 char* malloc (int ) ;
 int pr_warning (char*,char*,...) ;
 int strerror (int) ;

int btf__load(struct btf *btf)
{
 __u32 log_buf_size = BPF_LOG_BUF_SIZE;
 char *log_buf = ((void*)0);
 int err = 0;

 if (btf->fd >= 0)
  return -EEXIST;

 log_buf = malloc(log_buf_size);
 if (!log_buf)
  return -ENOMEM;

 *log_buf = 0;

 btf->fd = bpf_load_btf(btf->data, btf->data_size,
          log_buf, log_buf_size, 0);
 if (btf->fd < 0) {
  err = -errno;
  pr_warning("Error loading BTF: %s(%d)\n", strerror(errno), errno);
  if (*log_buf)
   pr_warning("%s\n", log_buf);
  goto done;
 }

done:
 free(log_buf);
 return err;
}
