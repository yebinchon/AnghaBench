
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dbri {TYPE_1__* pipes; } ;
struct TYPE_2__ {int desc; } ;



__attribute__((used)) static inline int pipe_active(struct snd_dbri *dbri, int pipe)
{
 return ((pipe >= 0) && (dbri->pipes[pipe].desc != -1));
}
