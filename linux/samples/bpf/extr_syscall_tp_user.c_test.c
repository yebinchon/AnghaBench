
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 char* bpf_log_buf ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ load_bpf_file (char*) ;
 int* map_fd ;
 int open (char*,int ) ;
 int printf (char*,int,int,int) ;
 int stderr ;
 char* strerror (int ) ;
 int verify_map (int) ;

__attribute__((used)) static int test(char *filename, int num_progs)
{
 int i, fd, map0_fds[num_progs], map1_fds[num_progs];

 for (i = 0; i < num_progs; i++) {
  if (load_bpf_file(filename)) {
   fprintf(stderr, "%s", bpf_log_buf);
   return 1;
  }
  printf("prog #%d: map ids %d %d\n", i, map_fd[0], map_fd[1]);
  map0_fds[i] = map_fd[0];
  map1_fds[i] = map_fd[1];
 }







 fd = open(filename, O_RDONLY);
 if (fd < 0) {
  fprintf(stderr, "open failed: %s\n", strerror(errno));
  return 1;
 }
 close(fd);


 for (i = 0; i < num_progs; i++) {
  verify_map(map0_fds[i]);
  verify_map(map1_fds[i]);
 }

 return 0;
}
