
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring {int (* walk ) (int,struct ring*) ;} ;


 int stub1 (int,struct ring*) ;

__attribute__((used)) static void walk_ring(int sock, struct ring *ring)
{
 ring->walk(sock, ring);
}
