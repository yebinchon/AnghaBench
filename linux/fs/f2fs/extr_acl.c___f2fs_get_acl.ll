; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c___f2fs_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c___f2fs_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@F2FS_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_F2FS_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32, %struct.page*)* @__f2fs_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @__f2fs_get_acl(%struct.inode* %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.page* %2, %struct.page** %7, align 8
  %12 = load i32, i32* @F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %12, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @F2FS_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = call i32 @f2fs_getxattr(%struct.inode* %19, i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* null, i32 0, %struct.page* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @F2FS_I_SB(%struct.inode* %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %30 = call i8* @f2fs_kmalloc(i32 %27, i32 %28, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.posix_acl* @ERR_PTR(i32 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %4, align 8
  br label %65

37:                                               ; preds = %25
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = call i32 @f2fs_getxattr(%struct.inode* %38, i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41, %struct.page* %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %37, %18
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.posix_acl* @f2fs_acl_from_disk(i8* %48, i32 %49)
  store %struct.posix_acl* %50, %struct.posix_acl** %10, align 8
  br label %61

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @ENODATA, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store %struct.posix_acl* null, %struct.posix_acl** %10, align 8
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.posix_acl* @ERR_PTR(i32 %58)
  store %struct.posix_acl* %59, %struct.posix_acl** %10, align 8
  br label %60

60:                                               ; preds = %57, %56
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @kvfree(i8* %62)
  %64 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  store %struct.posix_acl* %64, %struct.posix_acl** %4, align 8
  br label %65

65:                                               ; preds = %61, %33
  %66 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  ret %struct.posix_acl* %66
}

declare dso_local i32 @f2fs_getxattr(%struct.inode*, i32, i8*, i8*, i32, %struct.page*) #1

declare dso_local i8* @f2fs_kmalloc(i32, i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @f2fs_acl_from_disk(i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
