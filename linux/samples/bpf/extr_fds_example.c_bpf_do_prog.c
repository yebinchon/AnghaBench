
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fd ;


 int BPF_F_PIN ;
 int SOL_SOCKET ;
 int SO_ATTACH_BPF ;
 int assert (int) ;
 int bpf_obj_get (char const*) ;
 int bpf_obj_pin (int,char const*) ;
 int bpf_prog_create (char const*) ;
 int errno ;
 int open_raw_sock (char*) ;
 int printf (char*,int,...) ;
 int setsockopt (int,int ,int ,int*,int) ;
 char* strerror (int ) ;

__attribute__((used)) static int bpf_do_prog(const char *file, uint32_t flags, const char *object)
{
 int fd, sock, ret;

 if (flags & BPF_F_PIN) {
  fd = bpf_prog_create(object);
  printf("bpf: prog fd:%d (%s)\n", fd, strerror(errno));
  assert(fd > 0);

  ret = bpf_obj_pin(fd, file);
  printf("bpf: pin ret:(%d,%s)\n", ret, strerror(errno));
  assert(ret == 0);
 } else {
  fd = bpf_obj_get(file);
  printf("bpf: get fd:%d (%s)\n", fd, strerror(errno));
  assert(fd > 0);
 }

 sock = open_raw_sock("lo");
 assert(sock > 0);

 ret = setsockopt(sock, SOL_SOCKET, SO_ATTACH_BPF, &fd, sizeof(fd));
 printf("bpf: sock:%d <- fd:%d attached ret:(%d,%s)\n", sock, fd,
        ret, strerror(errno));
 assert(ret == 0);

 return 0;
}
