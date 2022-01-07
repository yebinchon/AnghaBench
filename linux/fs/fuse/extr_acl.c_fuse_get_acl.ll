; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_acl.c_fuse_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_acl.c_fuse_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i64, i32, i32 }

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @fuse_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %6, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %102

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %28, i8** %8, align 8
  br label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %34, i8** %8, align 8
  br label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.posix_acl* @ERR_PTR(i32 %37)
  store %struct.posix_acl* %38, %struct.posix_acl** %3, align 8
  br label %102

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.posix_acl* @ERR_PTR(i32 %48)
  store %struct.posix_acl* %49, %struct.posix_acl** %3, align 8
  br label %102

50:                                               ; preds = %40
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32 @fuse_getxattr(%struct.inode* %51, i8* %52, i8* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %60 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.posix_acl* @posix_acl_from_xattr(i32 %61, i8* %62, i32 %63)
  store %struct.posix_acl* %64, %struct.posix_acl** %10, align 8
  br label %98

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ENODATA, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %80 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %68, %65
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  br label %97

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ERANGE, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @E2BIG, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.posix_acl* @ERR_PTR(i32 %91)
  store %struct.posix_acl* %92, %struct.posix_acl** %10, align 8
  br label %96

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = call %struct.posix_acl* @ERR_PTR(i32 %94)
  store %struct.posix_acl* %95, %struct.posix_acl** %10, align 8
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %58
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  store %struct.posix_acl* %101, %struct.posix_acl** %3, align 8
  br label %102

102:                                              ; preds = %98, %46, %35, %22
  %103 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %103
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @fuse_getxattr(%struct.inode*, i8*, i8*, i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
