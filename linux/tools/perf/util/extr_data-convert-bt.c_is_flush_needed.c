
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_stream {scalar_t__ count; } ;


 scalar_t__ STREAM_FLUSH_COUNT ;

__attribute__((used)) static bool is_flush_needed(struct ctf_stream *cs)
{
 return cs->count >= STREAM_FLUSH_COUNT;
}
