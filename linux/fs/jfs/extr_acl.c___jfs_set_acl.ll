; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c___jfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c___jfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, i32, %struct.posix_acl*)* @__jfs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__jfs_set_acl(i32 %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.posix_acl* %3, %struct.posix_acl** %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %19 [
    i32 129, label %15
    i32 128, label %17
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %16, i8** %10, align 8
  br label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %18, i8** %10, align 8
  br label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %17, %15
  %23 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %24 = icmp ne %struct.posix_acl* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %27 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @posix_acl_xattr_size(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i32 %30, i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %25
  %39 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %39, i8* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %54

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @__jfs_setxattr(i32 %48, %struct.inode* %49, i8* %50, i8* %51, i32 %52, i32 0)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %45
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %63 = call i32 @set_cached_acl(%struct.inode* %60, i32 %61, %struct.posix_acl* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %35, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i32) #1

declare dso_local i32 @__jfs_setxattr(i32, %struct.inode*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
