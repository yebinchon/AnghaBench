
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MCPU ;
 int MSR_FIDVID_STATUS ;
 int MSR_S_HI_CURRENT_VID ;
 int MSR_S_LO_CURRENT_FID ;
 int O_RDONLY ;
 int SEEK_CUR ;
 int close (int) ;
 int lseek (int,int ,int ) ;
 int open (char*,int ) ;
 int read (int,int*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int get_fidvid(uint32_t cpu, uint32_t *fid, uint32_t *vid)
{
 int err = 1;
 uint64_t msr = 0;
 int fd;
 char file[20];

 if (cpu > MCPU)
  goto out;

 sprintf(file, "/dev/cpu/%d/msr", cpu);

 fd = open(file, O_RDONLY);
 if (fd < 0)
  goto out;
 lseek(fd, MSR_FIDVID_STATUS, SEEK_CUR);
 if (read(fd, &msr, 8) != 8)
  goto err1;

 *fid = ((uint32_t )(msr & 0xffffffffull)) & MSR_S_LO_CURRENT_FID;
 *vid = ((uint32_t )(msr>>32 & 0xffffffffull)) & MSR_S_HI_CURRENT_VID;
 err = 0;
err1:
 close(fd);
out:
 return err;
}
