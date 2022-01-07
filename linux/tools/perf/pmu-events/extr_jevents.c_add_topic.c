
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 int free (int ) ;
 int pr_info (char*,int ,int ,char*) ;
 int prog ;
 int strdup (char*) ;
 int strerror (int ) ;
 int topic ;

__attribute__((used)) static int add_topic(char *bname)
{
 free(topic);
 topic = strdup(bname);
 if (!topic) {
  pr_info("%s: strdup() error %s for file %s\n", prog,
    strerror(errno), bname);
  return -ENOMEM;
 }
 return 0;
}
