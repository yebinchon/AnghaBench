; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c_xfs_xattr_put_listent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c_xfs_xattr_put_listent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_attr_list_context = type { i64 }

@XFS_ATTR_ROOT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i8* null, align 8
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@XFS_ATTR_SECURE = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i8* null, align 8
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX = common dso_local global i8* null, align 8
@XATTR_USER_PREFIX_LEN = common dso_local global i32 0, align 4
@SGI_ACL_DEFAULT = common dso_local global i32 0, align 4
@SGI_ACL_DEFAULT_SIZE = common dso_local global i32 0, align 4
@SGI_ACL_FILE = common dso_local global i32 0, align 4
@SGI_ACL_FILE_SIZE = common dso_local global i32 0, align 4
@XATTR_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@XATTR_SYSTEM_PREFIX = common dso_local global i8* null, align 8
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_attr_list_context*, i32, i8*, i32, i32)* @xfs_xattr_put_listent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_xattr_put_listent(%struct.xfs_attr_list_context* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_attr_list_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.xfs_attr_list_context* %0, %struct.xfs_attr_list_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @XFS_ATTR_ROOT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %50

28:                                               ; preds = %23
  %29 = load i8*, i8** @XATTR_TRUSTED_PREFIX, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i32, i32* @XATTR_TRUSTED_PREFIX_LEN, align 4
  store i32 %30, i32* %12, align 4
  br label %43

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @XFS_ATTR_SECURE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** @XATTR_SECURITY_PREFIX, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  store i32 %38, i32* %12, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** @XATTR_USER_PREFIX, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i32, i32* @XATTR_USER_PREFIX_LEN, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.xfs_attr_list_context*, %struct.xfs_attr_list_context** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @__xfs_xattr_put_listent(%struct.xfs_attr_list_context* %44, i8* %45, i32 %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %27
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @__xfs_xattr_put_listent(%struct.xfs_attr_list_context*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
