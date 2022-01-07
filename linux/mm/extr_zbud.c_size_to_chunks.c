
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CHUNK_SHIFT ;
 size_t CHUNK_SIZE ;

__attribute__((used)) static int size_to_chunks(size_t size)
{
 return (size + CHUNK_SIZE - 1) >> CHUNK_SHIFT;
}
