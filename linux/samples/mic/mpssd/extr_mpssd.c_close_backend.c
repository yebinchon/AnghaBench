
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backend_file; int backend; int backend_size; int backend_addr; } ;
struct mic_info {TYPE_1__ mic_virtblk; } ;


 int close (int ) ;
 int free (int ) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void
close_backend(struct mic_info *mic)
{
 munmap(mic->mic_virtblk.backend_addr, mic->mic_virtblk.backend_size);
 close(mic->mic_virtblk.backend);
 free(mic->mic_virtblk.backend_file);
}
