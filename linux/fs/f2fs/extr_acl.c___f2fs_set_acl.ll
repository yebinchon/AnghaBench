; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c___f2fs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_acl.c___f2fs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.page = type { i32 }

@F2FS_XATTR_INDEX_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FI_ACL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.posix_acl*, %struct.page*)* @__f2fs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_set_acl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %55 [
    i32 129, label %19
    i32 128, label %38
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @F2FS_XATTR_INDEX_POSIX_ACL_ACCESS, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %22 = icmp ne %struct.posix_acl* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %9, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @posix_acl_update_mode(%struct.inode* %27, i32* %14, %struct.posix_acl** %8)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %97

33:                                               ; preds = %26
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @set_acl_inode(%struct.inode* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %23, %19
  br label %58

38:                                               ; preds = %4
  %39 = load i32, i32* @F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @S_ISDIR(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %47 = icmp ne %struct.posix_acl* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EACCES, align 4
  %50 = sub nsw i32 0, %49
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  store i32 %53, i32* %5, align 4
  br label %97

54:                                               ; preds = %38
  br label %58

55:                                               ; preds = %4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %97

58:                                               ; preds = %54, %37
  %59 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %60 = icmp ne %struct.posix_acl* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @F2FS_I_SB(%struct.inode* %62)
  %64 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %65 = call i8* @f2fs_acl_to_disk(i32 %63, %struct.posix_acl* %64, i64* %12)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @IS_ERR(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load i32, i32* @FI_ACL_MODE, align 4
  %72 = call i32 @clear_inode_flag(%struct.inode* %70, i32 %71)
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %5, align 4
  br label %97

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.page*, %struct.page** %9, align 8
  %82 = call i32 @f2fs_setxattr(%struct.inode* %77, i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %79, i64 %80, %struct.page* %81, i32 0)
  store i32 %82, i32* %13, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @kvfree(i8* %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %91 = call i32 @set_cached_acl(%struct.inode* %88, i32 %89, %struct.posix_acl* %90)
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = load i32, i32* @FI_ACL_MODE, align 4
  %95 = call i32 @clear_inode_flag(%struct.inode* %93, i32 %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %92, %69, %55, %52, %31
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i32*, %struct.posix_acl**) #1

declare dso_local i32 @set_acl_inode(%struct.inode*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @f2fs_acl_to_disk(i32, %struct.posix_acl*, i64*) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @f2fs_setxattr(%struct.inode*, i32, i8*, i8*, i64, %struct.page*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
