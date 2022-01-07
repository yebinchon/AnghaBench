
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {scalar_t__ nfsd_serv; } ;
struct file {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef enum vers_op { ____Placeholder_vers_op } vers_op ;


 scalar_t__ EBUSY ;
 scalar_t__ EINVAL ;
 int NFSD_AVAIL ;
 int NFSD_CLEAR ;
 int NFSD_SET ;
 int NFSD_SUPPORTED_MINOR_VERSION ;
 int NFSD_TEST ;
 int SIMPLE_TRANSACTION_LIMIT ;
 scalar_t__ kstrtouint (char*,int ,unsigned int*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int netns (struct file*) ;
 int nfsd_minorversion (struct nfsd_net*,unsigned int,int) ;
 int nfsd_net_id ;
 int nfsd_print_version_support (struct nfsd_net*,char*,int,char*,int,int) ;
 int nfsd_reset_versions (struct nfsd_net*) ;
 int nfsd_vers (struct nfsd_net*,int,int) ;
 int qword_get (char**,char*,size_t) ;
 int simple_strtol (char*,char**,int ) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static ssize_t __write_versions(struct file *file, char *buf, size_t size)
{
 char *mesg = buf;
 char *vers, *minorp, sign;
 int len, num, remaining;
 ssize_t tlen = 0;
 char *sep;
 struct nfsd_net *nn = net_generic(netns(file), nfsd_net_id);

 if (size>0) {
  if (nn->nfsd_serv)




   return -EBUSY;
  if (buf[size-1] != '\n')
   return -EINVAL;
  buf[size-1] = 0;

  vers = mesg;
  len = qword_get(&mesg, vers, size);
  if (len <= 0) return -EINVAL;
  do {
   enum vers_op cmd;
   unsigned minor;
   sign = *vers;
   if (sign == '+' || sign == '-')
    num = simple_strtol((vers+1), &minorp, 0);
   else
    num = simple_strtol(vers, &minorp, 0);
   if (*minorp == '.') {
    if (num != 4)
     return -EINVAL;
    if (kstrtouint(minorp+1, 0, &minor) < 0)
     return -EINVAL;
   }

   cmd = sign == '-' ? NFSD_CLEAR : NFSD_SET;
   switch(num) {
   case 2:
   case 3:
    nfsd_vers(nn, num, cmd);
    break;
   case 4:
    if (*minorp == '.') {
     if (nfsd_minorversion(nn, minor, cmd) < 0)
      return -EINVAL;
    } else if ((cmd == NFSD_SET) != nfsd_vers(nn, num, NFSD_TEST)) {





     minor = 0;
     while (nfsd_minorversion(nn, minor, cmd) >= 0)
      minor++;
    }
    break;
   default:
    return -EINVAL;
   }
   vers += len + 1;
  } while ((len = qword_get(&mesg, vers, size)) > 0);



  nfsd_reset_versions(nn);
 }


 len = 0;
 sep = "";
 remaining = SIMPLE_TRANSACTION_LIMIT;
 for (num=2 ; num <= 4 ; num++) {
  int minor;
  if (!nfsd_vers(nn, num, NFSD_AVAIL))
   continue;

  minor = -1;
  do {
   len = nfsd_print_version_support(nn, buf, remaining,
     sep, num, minor);
   if (len >= remaining)
    goto out;
   remaining -= len;
   buf += len;
   tlen += len;
   minor++;
   if (len)
    sep = " ";
  } while (num == 4 && minor <= NFSD_SUPPORTED_MINOR_VERSION);
 }
out:
 len = snprintf(buf, remaining, "\n");
 if (len >= remaining)
  return -EINVAL;
 return tlen + len;
}
