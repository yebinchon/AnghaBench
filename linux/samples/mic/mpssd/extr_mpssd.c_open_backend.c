
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ backend; scalar_t__ backend_addr; int backend_file; int backend_size; } ;
struct mic_info {TYPE_1__ mic_virtblk; int name; } ;


 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (scalar_t__) ;
 int errno ;
 int free (int ) ;
 scalar_t__ mmap (int *,int ,int,int ,scalar_t__,long) ;
 int mpsslog (char*,int ,int ,...) ;
 scalar_t__ open (int ,int ) ;
 int set_backend_file (struct mic_info*) ;
 int set_backend_size (struct mic_info*) ;
 int strerror (int ) ;

__attribute__((used)) static bool
open_backend(struct mic_info *mic)
{
 if (!set_backend_file(mic))
  goto _error_exit;
 mic->mic_virtblk.backend = open(mic->mic_virtblk.backend_file, O_RDWR);
 if (mic->mic_virtblk.backend < 0) {
  mpsslog("%s: can't open: %s\n", mic->name,
   mic->mic_virtblk.backend_file);
  goto _error_free;
 }
 if (!set_backend_size(mic))
  goto _error_close;
 mic->mic_virtblk.backend_addr = mmap(((void*)0),
  mic->mic_virtblk.backend_size,
  PROT_READ|PROT_WRITE, MAP_SHARED,
  mic->mic_virtblk.backend, 0L);
 if (mic->mic_virtblk.backend_addr == MAP_FAILED) {
  mpsslog("%s: can't map: %s %s\n",
   mic->name, mic->mic_virtblk.backend_file,
   strerror(errno));
  goto _error_close;
 }
 return 1;

 _error_close:
 close(mic->mic_virtblk.backend);
 _error_free:
 free(mic->mic_virtblk.backend_file);
 _error_exit:
 return 0;
}
