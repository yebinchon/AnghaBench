; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c_jfs_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c_jfs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @jfs_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %2
  %12 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %12, i8** %7, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %14, i8** %7, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.posix_acl* @ERR_PTR(i32 %17)
  store %struct.posix_acl* %18, %struct.posix_acl** %3, align 8
  br label %62

19:                                               ; preds = %13, %11
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @__jfs_getxattr(%struct.inode* %20, i8* %21, i8* null, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i32 %26, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.posix_acl* @ERR_PTR(i32 %33)
  store %struct.posix_acl* %34, %struct.posix_acl** %3, align 8
  br label %62

35:                                               ; preds = %25
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @__jfs_getxattr(%struct.inode* %36, i8* %37, i8* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %19
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.posix_acl* null, %struct.posix_acl** %6, align 8
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.posix_acl* @ERR_PTR(i32 %51)
  store %struct.posix_acl* %52, %struct.posix_acl** %6, align 8
  br label %53

53:                                               ; preds = %50, %49
  br label %58

54:                                               ; preds = %41
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.posix_acl* @posix_acl_from_xattr(i32* @init_user_ns, i8* %55, i32 %56)
  store %struct.posix_acl* %57, %struct.posix_acl** %6, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %61, %struct.posix_acl** %3, align 8
  br label %62

62:                                               ; preds = %58, %31, %15
  %63 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %63
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @__jfs_getxattr(%struct.inode*, i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
