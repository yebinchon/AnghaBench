
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct splice_pipe_desc {TYPE_1__* partial; } ;
struct buffer_ref {int dummy; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 int buffer_ref_release (struct buffer_ref*) ;

__attribute__((used)) static void buffer_spd_release(struct splice_pipe_desc *spd, unsigned int i)
{
 struct buffer_ref *ref =
  (struct buffer_ref *)spd->partial[i].private;

 buffer_ref_release(ref);
 spd->partial[i].private = 0;
}
