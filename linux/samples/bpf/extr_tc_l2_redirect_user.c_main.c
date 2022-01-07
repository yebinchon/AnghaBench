
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int bpf_map_update_elem (int,int*,int*,int ) ;
 int bpf_obj_get (char const*) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*,int) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int perror (char*) ;
 int stderr ;
 char* strerror (int) ;
 int usage () ;

int main(int argc, char **argv)
{
 const char *pinned_file = ((void*)0);
 int ifindex = -1;
 int array_key = 0;
 int array_fd = -1;
 int ret = -1;
 int opt;

 while ((opt = getopt(argc, argv, "F:U:i:")) != -1) {
  switch (opt) {

  case 'U':
   pinned_file = optarg;
   break;
  case 'i':
   ifindex = atoi(optarg);
   break;
  default:
   usage();
   goto out;
  }
 }

 if (ifindex < 0 || !pinned_file) {
  usage();
  goto out;
 }

 array_fd = bpf_obj_get(pinned_file);
 if (array_fd < 0) {
  fprintf(stderr, "bpf_obj_get(%s): %s(%d)\n",
   pinned_file, strerror(errno), errno);
  goto out;
 }


 ret = bpf_map_update_elem(array_fd, &array_key, &ifindex, 0);
 if (ret) {
  perror("bpf_map_update_elem");
  goto out;
 }

out:
 if (array_fd != -1)
  close(array_fd);
 return ret;
}
