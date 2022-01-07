
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rseq_cs {unsigned long start_ip; unsigned long post_commit_offset; } ;



__attribute__((used)) static bool in_rseq_cs(unsigned long ip, struct rseq_cs *rseq_cs)
{
 return ip - rseq_cs->start_ip < rseq_cs->post_commit_offset;
}
