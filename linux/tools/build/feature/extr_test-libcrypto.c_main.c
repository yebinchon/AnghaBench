
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dat ;
typedef int MD5_CTX ;


 int MD5_DIGEST_LENGTH ;
 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,unsigned char*,int) ;
 int SHA1 (unsigned char*,int,unsigned char*) ;
 int SHA_DIGEST_LENGTH ;

int main(void)
{
 MD5_CTX context;
 unsigned char md[MD5_DIGEST_LENGTH + SHA_DIGEST_LENGTH];
 unsigned char dat[] = "12345";

 MD5_Init(&context);
 MD5_Update(&context, &dat[0], sizeof(dat));
 MD5_Final(&md[0], &context);

 SHA1(&dat[0], sizeof(dat), &md[0]);

 return 0;
}
