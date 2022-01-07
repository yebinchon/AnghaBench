
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_info {TYPE_2__* jheads; } ;
struct TYPE_3__ {int io_mutex; } ;
struct TYPE_4__ {TYPE_1__ wbuf; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void release_head(struct ubifs_info *c, int jhead)
{
 mutex_unlock(&c->jheads[jhead].wbuf.io_mutex);
}
