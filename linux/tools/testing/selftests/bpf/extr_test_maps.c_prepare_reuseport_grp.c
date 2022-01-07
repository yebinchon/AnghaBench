
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sockaddr_in6 {scalar_t__ sin6_port; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sk_cookie ;
typedef int s6 ;
typedef int optval ;
typedef int __u64 ;
typedef int __u32 ;
typedef int __s64 ;
typedef scalar_t__ __s32 ;


 int AF_INET6 ;
 int BPF_ANY ;
 int CHECK (int,char*,char*,int,int,...) ;
 int EINVAL ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_COOKIE ;
 int SO_REUSEPORT ;
 int assert (int) ;
 int bind (int,struct sockaddr*,int) ;
 int bpf_map_update_elem (int,int const*,void*,int ) ;
 int errno ;
 int getsockname (int,struct sockaddr*,int*) ;
 int getsockopt (int,int ,int ,int *,int*) ;
 int in6addr_any ;
 int listen (int,int ) ;
 int setsockopt (int,int ,int ,int const*,int) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static void prepare_reuseport_grp(int type, int map_fd, size_t map_elem_size,
      __s64 *fds64, __u64 *sk_cookies,
      unsigned int n)
{
 socklen_t optlen, addrlen;
 struct sockaddr_in6 s6;
 const __u32 index0 = 0;
 const int optval = 1;
 unsigned int i;
 u64 sk_cookie;
 void *value;
 __s32 fd32;
 __s64 fd64;
 int err;

 s6.sin6_family = AF_INET6;
 s6.sin6_addr = in6addr_any;
 s6.sin6_port = 0;
 addrlen = sizeof(s6);
 optlen = sizeof(sk_cookie);

 for (i = 0; i < n; i++) {
  fd64 = socket(AF_INET6, type, 0);
  CHECK(fd64 == -1, "socket()",
        "sock_type:%d fd64:%lld errno:%d\n",
        type, fd64, errno);

  err = setsockopt(fd64, SOL_SOCKET, SO_REUSEPORT,
     &optval, sizeof(optval));
  CHECK(err == -1, "setsockopt(SO_REUSEPORT)",
        "err:%d errno:%d\n", err, errno);


  if (map_elem_size == sizeof(__u64))
   value = &fd64;
  else {
   assert(map_elem_size == sizeof(__u32));
   fd32 = (__s32)fd64;
   value = &fd32;
  }
  err = bpf_map_update_elem(map_fd, &index0, value, BPF_ANY);
  CHECK(err != -1 || errno != EINVAL,
        "reuseport array update unbound sk",
        "sock_type:%d err:%d errno:%d\n",
        type, err, errno);

  err = bind(fd64, (struct sockaddr *)&s6, sizeof(s6));
  CHECK(err == -1, "bind()",
        "sock_type:%d err:%d errno:%d\n", type, err, errno);

  if (i == 0) {
   err = getsockname(fd64, (struct sockaddr *)&s6,
       &addrlen);
   CHECK(err == -1, "getsockname()",
         "sock_type:%d err:%d errno:%d\n",
         type, err, errno);
  }

  err = getsockopt(fd64, SOL_SOCKET, SO_COOKIE, &sk_cookie,
     &optlen);
  CHECK(err == -1, "getsockopt(SO_COOKIE)",
        "sock_type:%d err:%d errno:%d\n", type, err, errno);

  if (type == SOCK_STREAM) {




   err = bpf_map_update_elem(map_fd, &index0, value,
        BPF_ANY);
   CHECK(err != -1 || errno != EINVAL,
         "reuseport array update non-listening sk",
         "sock_type:%d err:%d errno:%d\n",
         type, err, errno);
   err = listen(fd64, 0);
   CHECK(err == -1, "listen()",
         "sock_type:%d, err:%d errno:%d\n",
         type, err, errno);
  }

  fds64[i] = fd64;
  sk_cookies[i] = sk_cookie;
 }
}
