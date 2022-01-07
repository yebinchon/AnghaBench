
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_info {int name; } ;
struct mic_copy_desc {unsigned int iovcnt; TYPE_1__* iov; } ;
struct TYPE_2__ {int iov_len; int iov_base; } ;


 int mpsslog (char*,int ,char const*,int,unsigned int,int ,int ) ;

__attribute__((used)) static void
disp_iovec(struct mic_info *mic, struct mic_copy_desc *copy,
    const char *s, int line)
{
 unsigned int i;

 for (i = 0; i < copy->iovcnt; i++)
  mpsslog("%s %s %d copy->iov[%d] addr %p len 0x%zx\n",
   mic->name, s, line, i,
   copy->iov[i].iov_base, copy->iov[i].iov_len);
}
