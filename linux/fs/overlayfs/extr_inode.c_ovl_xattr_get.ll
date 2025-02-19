; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_xattr_get(%struct.dentry* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cred*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @ovl_i_dentry_upper(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = inttoptr i64 %15 to %struct.dentry*
  br label %22

19:                                               ; preds = %5
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = call %struct.dentry* @ovl_dentry_lower(%struct.dentry* %20)
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi %struct.dentry* [ %18, %17 ], [ %21, %19 ]
  store %struct.dentry* %23, %struct.dentry** %13, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.cred* @ovl_override_creds(i32 %26)
  store %struct.cred* %27, %struct.cred** %12, align 8
  %28 = load %struct.dentry*, %struct.dentry** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @vfs_getxattr(%struct.dentry* %28, i8* %29, i8* %30, i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.cred*, %struct.cred** %12, align 8
  %34 = call i32 @revert_creds(%struct.cred* %33)
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local i64 @ovl_i_dentry_upper(%struct.inode*) #1

declare dso_local %struct.dentry* @ovl_dentry_lower(%struct.dentry*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @vfs_getxattr(%struct.dentry*, i8*, i8*, i64) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
