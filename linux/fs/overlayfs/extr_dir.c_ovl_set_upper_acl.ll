; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_set_upper_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_set_upper_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.posix_acl = type { i32 }

@CONFIG_FS_POSIX_ACL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.posix_acl*)* @ovl_set_upper_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_set_upper_acl(%struct.dentry* %0, i8* %1, %struct.posix_acl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  %11 = load i32, i32* @CONFIG_FS_POSIX_ACL, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %50

18:                                               ; preds = %14
  %19 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %20 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @posix_acl_xattr_size(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %18
  %32 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %32, i8* %33, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %46

39:                                               ; preds = %31
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @XATTR_CREATE, align 4
  %45 = call i32 @vfs_setxattr(%struct.dentry* %40, i8* %41, i8* %42, i64 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %28, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @vfs_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
