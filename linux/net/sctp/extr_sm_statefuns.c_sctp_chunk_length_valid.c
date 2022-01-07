
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int pdiscard; TYPE_1__* chunk_hdr; } ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {int length; } ;


 scalar_t__ ntohs (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool sctp_chunk_length_valid(struct sctp_chunk *chunk,
        __u16 required_length)
{
 __u16 chunk_length = ntohs(chunk->chunk_hdr->length);


 if (unlikely(chunk->pdiscard))
  return 0;
 if (unlikely(chunk_length < required_length))
  return 0;

 return 1;
}
