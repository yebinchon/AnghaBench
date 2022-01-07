
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int exit (int) ;
 int printf (char*,int,char*) ;
 int tag_dump (char*,int *,int ) ;

__attribute__((used)) static void tag_exit_report(int insns, int fd_map, uint8_t *ftag,
       uint8_t *atag, uint32_t len)
{
 printf("Program tag mismatch for %d insns%s!\n", insns,
        fd_map < 0 ? "" : " with map");

 tag_dump("  fdinfo result: ", ftag, len);
 tag_dump("  af_alg result: ", atag, len);
 exit(1);
}
