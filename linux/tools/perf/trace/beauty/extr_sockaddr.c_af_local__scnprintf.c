
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct sockaddr {int dummy; } ;


 size_t scnprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static size_t af_local__scnprintf(struct sockaddr *sa, char *bf, size_t size)
{
 struct sockaddr_un *sun = (struct sockaddr_un *)sa;
 return scnprintf(bf, size, ", path: %s", sun->sun_path);
}
