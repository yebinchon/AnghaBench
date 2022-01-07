; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_acl.c___reiserfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_xattr_acl.c___reiserfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.inode*, i32, %struct.posix_acl*)* @__reiserfs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reiserfs_set_acl(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2, %struct.posix_acl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.reiserfs_transaction_handle*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.posix_acl* %3, %struct.posix_acl** %9, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %34 [
    i32 129, label %15
    i32 128, label %17
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %16, i8** %10, align 8
  br label %37

17:                                               ; preds = %4
  %18 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISDIR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %26 = icmp ne %struct.posix_acl* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  store i32 %32, i32* %5, align 4
  br label %85

33:                                               ; preds = %17
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %85

37:                                               ; preds = %33, %15
  %38 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %39 = icmp ne %struct.posix_acl* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %42 = call i8* @reiserfs_posix_acl_to_disk(%struct.posix_acl* %41, i64* %12)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @PTR_ERR(i8* %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %85

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @reiserfs_xattr_set_handle(%struct.reiserfs_transaction_handle* %52, %struct.inode* %53, i8* %54, i8* %55, i64 %56, i32 0)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @ENODATA, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i32 @current_time(%struct.inode* %66)
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = call i32 @mark_inode_dirty(%struct.inode* %70)
  br label %72

72:                                               ; preds = %65, %62
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %82 = call i32 @set_cached_acl(%struct.inode* %79, i32 %80, %struct.posix_acl* %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %46, %34, %31
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i8* @reiserfs_posix_acl_to_disk(%struct.posix_acl*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i32 @reiserfs_xattr_set_handle(%struct.reiserfs_transaction_handle*, %struct.inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
