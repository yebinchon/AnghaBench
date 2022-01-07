
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring {scalar_t__ mm_space; int rd_num; int flen; TYPE_1__* rd; int rd_len; int mm_len; } ;
struct TYPE_2__ {scalar_t__ iov_base; int iov_len; } ;


 scalar_t__ MAP_FAILED ;
 int MAP_LOCKED ;
 int MAP_POPULATE ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int exit (int) ;
 int memset (TYPE_1__*,int ,int ) ;
 scalar_t__ mmap (int ,int ,int,int,int,int ) ;
 int perror (char*) ;

__attribute__((used)) static void mmap_ring(int sock, struct ring *ring)
{
 int i;

 ring->mm_space = mmap(0, ring->mm_len, PROT_READ | PROT_WRITE,
         MAP_SHARED | MAP_LOCKED | MAP_POPULATE, sock, 0);
 if (ring->mm_space == MAP_FAILED) {
  perror("mmap");
  exit(1);
 }

 memset(ring->rd, 0, ring->rd_len);
 for (i = 0; i < ring->rd_num; ++i) {
  ring->rd[i].iov_base = ring->mm_space + (i * ring->flen);
  ring->rd[i].iov_len = ring->flen;
 }
}
