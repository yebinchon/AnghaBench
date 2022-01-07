
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct char_device_struct {unsigned int major; unsigned int baseminor; unsigned int minorct; struct char_device_struct* next; int name; } ;


 unsigned int CHRDEV_MAJOR_MAX ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct char_device_struct* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MINORMASK ;
 struct char_device_struct** chrdevs ;
 int chrdevs_lock ;
 int find_dynamic_major () ;
 int kfree (struct char_device_struct*) ;
 struct char_device_struct* kzalloc (int,int ) ;
 int major_to_index (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char const*,...) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static struct char_device_struct *
__register_chrdev_region(unsigned int major, unsigned int baseminor,
      int minorct, const char *name)
{
 struct char_device_struct *cd, *curr, *prev = ((void*)0);
 int ret;
 int i;

 if (major >= CHRDEV_MAJOR_MAX) {
  pr_err("CHRDEV \"%s\" major requested (%u) is greater than the maximum (%u)\n",
         name, major, CHRDEV_MAJOR_MAX-1);
  return ERR_PTR(-EINVAL);
 }

 if (minorct > MINORMASK + 1 - baseminor) {
  pr_err("CHRDEV \"%s\" minor range requested (%u-%u) is out of range of maximum range (%u-%u) for a single major\n",
   name, baseminor, baseminor + minorct - 1, 0, MINORMASK);
  return ERR_PTR(-EINVAL);
 }

 cd = kzalloc(sizeof(struct char_device_struct), GFP_KERNEL);
 if (cd == ((void*)0))
  return ERR_PTR(-ENOMEM);

 mutex_lock(&chrdevs_lock);

 if (major == 0) {
  ret = find_dynamic_major();
  if (ret < 0) {
   pr_err("CHRDEV \"%s\" dynamic allocation region is full\n",
          name);
   goto out;
  }
  major = ret;
 }

 ret = -EBUSY;
 i = major_to_index(major);
 for (curr = chrdevs[i]; curr; prev = curr, curr = curr->next) {
  if (curr->major < major)
   continue;

  if (curr->major > major)
   break;

  if (curr->baseminor + curr->minorct <= baseminor)
   continue;

  if (curr->baseminor >= baseminor + minorct)
   break;

  goto out;
 }

 cd->major = major;
 cd->baseminor = baseminor;
 cd->minorct = minorct;
 strlcpy(cd->name, name, sizeof(cd->name));

 if (!prev) {
  cd->next = curr;
  chrdevs[i] = cd;
 } else {
  cd->next = prev->next;
  prev->next = cd;
 }

 mutex_unlock(&chrdevs_lock);
 return cd;
out:
 mutex_unlock(&chrdevs_lock);
 kfree(cd);
 return ERR_PTR(ret);
}
