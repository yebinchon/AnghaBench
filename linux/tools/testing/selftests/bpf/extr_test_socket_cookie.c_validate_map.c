
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_cookie {int cookie_value; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;
typedef int __u32 ;


 int bpf_map__fd (struct bpf_map*) ;
 int bpf_map_lookup_elem (int,int*,struct socket_cookie*) ;
 int getsockname (int,struct sockaddr*,int*) ;
 int log_err (char*,...) ;
 int ntohs (int ) ;

__attribute__((used)) static int validate_map(struct bpf_map *map, int client_fd)
{
 __u32 cookie_expected_value;
 struct sockaddr_in6 addr;
 socklen_t len = sizeof(addr);
 struct socket_cookie val;
 int err = 0;
 int map_fd;

 if (!map) {
  log_err("Map not found in BPF object");
  goto err;
 }

 map_fd = bpf_map__fd(map);

 err = bpf_map_lookup_elem(map_fd, &client_fd, &val);

 err = getsockname(client_fd, (struct sockaddr *)&addr, &len);
 if (err) {
  log_err("Can't get client local addr");
  goto out;
 }

 cookie_expected_value = (ntohs(addr.sin6_port) << 8) | 0xFF;
 if (val.cookie_value != cookie_expected_value) {
  log_err("Unexpected value in map: %x != %x", val.cookie_value,
   cookie_expected_value);
  goto err;
 }

 goto out;
err:
 err = -1;
out:
 return err;
}
