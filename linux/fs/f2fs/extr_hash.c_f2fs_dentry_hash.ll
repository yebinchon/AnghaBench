; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_hash.c_f2fs_dentry_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_hash.c_f2fs_dentry_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i8* }
%struct.fscrypt_name = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_dentry_hash(%struct.inode* %0, %struct.qstr* %1, %struct.fscrypt_name* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.fscrypt_name*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %6, align 8
  %7 = load %struct.qstr*, %struct.qstr** %5, align 8
  %8 = load %struct.fscrypt_name*, %struct.fscrypt_name** %6, align 8
  %9 = call i32 @__f2fs_dentry_hash(%struct.qstr* %7, %struct.fscrypt_name* %8)
  ret i32 %9
}

declare dso_local i32 @__f2fs_dentry_hash(%struct.qstr*, %struct.fscrypt_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
