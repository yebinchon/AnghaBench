
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring {int rd; int mm_len; int mm_space; } ;


 int free (int ) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void unmap_ring(int sock, struct ring *ring)
{
 munmap(ring->mm_space, ring->mm_len);
 free(ring->rd);
}
