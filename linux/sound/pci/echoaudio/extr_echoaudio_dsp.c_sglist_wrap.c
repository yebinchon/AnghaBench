
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct audiopipe {TYPE_1__ sgpage; } ;


 int sglist_add_mapping (struct echoaudio*,struct audiopipe*,int ,int ) ;

__attribute__((used)) static inline int sglist_wrap(struct echoaudio *chip, struct audiopipe *pipe)
{
 return sglist_add_mapping(chip, pipe, pipe->sgpage.addr, 0);
}
