
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_desc {int need_wakeup; scalar_t__ num_spliced; } ;



__attribute__((used)) static void splice_from_pipe_begin(struct splice_desc *sd)
{
 sd->num_spliced = 0;
 sd->need_wakeup = 0;
}
