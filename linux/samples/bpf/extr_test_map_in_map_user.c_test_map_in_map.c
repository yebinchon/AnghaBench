
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int* s6_addr16; } ;
struct sockaddr_in6 {int sin6_port; TYPE_1__ sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int in6 ;


 int AF_INET6 ;
 scalar_t__ EBADF ;
 int INLINE_RESULT_H ;
 int NR_TESTS ;
 int REG_RESULT_H ;
 int assert (int) ;
 int bpf_map_delete_elem (int ,int*) ;
 int bpf_map_lookup_elem (int ,int*,int*) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int populate_map (int,int) ;
 int printf (char*,...) ;
 int rand () ;
 char** test_names ;

__attribute__((used)) static void test_map_in_map(void)
{
 struct sockaddr_in6 in6 = { .sin6_family = AF_INET6 };
 uint32_t result_key = 0, port_key;
 int result, inline_result;
 int magic_result = 0xfaceb00c;
 int ret;
 int i;

 port_key = rand() & 0x00FF;
 populate_map(port_key, magic_result);

 in6.sin6_addr.s6_addr16[0] = 0xdead;
 in6.sin6_addr.s6_addr16[1] = 0xbeef;
 in6.sin6_port = port_key;

 for (i = 0; i < NR_TESTS; i++) {
  printf("%s: ", test_names[i]);

  in6.sin6_addr.s6_addr16[7] = i;
  ret = connect(-1, (struct sockaddr *)&in6, sizeof(in6));
  assert(ret == -1 && errno == EBADF);

  ret = bpf_map_lookup_elem(REG_RESULT_H, &result_key, &result);
  assert(!ret);

  ret = bpf_map_lookup_elem(INLINE_RESULT_H, &result_key,
       &inline_result);
  assert(!ret);

  if (result != magic_result || inline_result != magic_result) {
   printf("Error. result:%d inline_result:%d\n",
          result, inline_result);
   exit(1);
  }

  bpf_map_delete_elem(REG_RESULT_H, &result_key);
  bpf_map_delete_elem(INLINE_RESULT_H, &result_key);

  printf("Pass\n");
 }
}
