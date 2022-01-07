
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring {int dummy; } ;
typedef int ring ;


 int KSFT_SKIP ;
 int TPACKET_V1 ;
 int bind_ring (int,struct ring*) ;
 int close (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int memset (struct ring*,int ,int) ;
 int mmap_ring (int,struct ring*) ;
 int pfsocket (int) ;
 int setup_ring (int,struct ring*,int,int) ;
 int stderr ;
 scalar_t__ test_kernel_bit_width () ;
 scalar_t__ test_user_bit_width () ;
 char** tpacket_str ;
 char** type_str ;
 int unmap_ring (int,struct ring*) ;
 int walk_ring (int,struct ring*) ;

__attribute__((used)) static int test_tpacket(int version, int type)
{
 int sock;
 struct ring ring;

 fprintf(stderr, "test: %s with %s ", tpacket_str[version],
  type_str[type]);
 fflush(stderr);

 if (version == TPACKET_V1 &&
     test_kernel_bit_width() != test_user_bit_width()) {
  fprintf(stderr, "test: skip %s %s since user and kernel "
   "space have different bit width\n",
   tpacket_str[version], type_str[type]);
  return KSFT_SKIP;
 }

 sock = pfsocket(version);
 memset(&ring, 0, sizeof(ring));
 setup_ring(sock, &ring, version, type);
 mmap_ring(sock, &ring);
 bind_ring(sock, &ring);
 walk_ring(sock, &ring);
 unmap_ring(sock, &ring);
 close(sock);

 fprintf(stderr, "\n");
 return 0;
}
