; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_acl.c_fuse_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_acl.c_fuse_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.fuse_conn = type { i32, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %13)
  store %struct.fuse_conn* %14, %struct.fuse_conn** %8, align 8
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %16 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %98

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %32, i8** %9, align 8
  br label %43

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %38, i8** %9, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %98

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %45 = icmp ne %struct.posix_acl* %44, null
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %48 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @posix_acl_xattr_size(i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @E2BIG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %98

57:                                               ; preds = %46
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmalloc(i64 %58, i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %98

66:                                               ; preds = %57
  %67 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %68 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @posix_acl_to_xattr(i32 %69, %struct.posix_acl* %70, i8* %71, i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %66
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @fuse_setxattr(%struct.inode* %81, i8* %82, i8* %83, i64 %84, i32 0)
  store i32 %85, i32* %10, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @kfree(i8* %86)
  br label %92

88:                                               ; preds = %43
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @fuse_removexattr(%struct.inode* %89, i8* %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = call i32 @forget_all_cached_acls(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call i32 @fuse_invalidate_attr(%struct.inode* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %92, %76, %63, %54, %39, %24
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @posix_acl_to_xattr(i32, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @fuse_setxattr(%struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @fuse_removexattr(%struct.inode*, i8*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
