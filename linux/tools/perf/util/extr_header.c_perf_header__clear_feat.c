
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_header {int adds_features; } ;


 int clear_bit (int,int ) ;

void perf_header__clear_feat(struct perf_header *header, int feat)
{
 clear_bit(feat, header->adds_features);
}
