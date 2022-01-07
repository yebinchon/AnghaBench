; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c_xfs_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c_xfs_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }

@XATTR_CREATE = common dso_local global i32 0, align 4
@ATTR_CREATE = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ATTR_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @xfs_xattr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_xattr_set(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfs_inode*, align 8
  %18 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %20 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = call %struct.xfs_inode* @XFS_I(%struct.inode* %22)
  store %struct.xfs_inode* %23, %struct.xfs_inode** %17, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @XATTR_CREATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load i32, i32* @ATTR_CREATE, align 4
  %30 = load i32, i32* %16, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %28, %7
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @XATTR_REPLACE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ATTR_REPLACE, align 4
  %39 = load i32, i32* %16, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @xfs_attr_remove(%struct.xfs_inode* %45, i8* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %65

49:                                               ; preds = %41
  %50 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @xfs_attr_set(%struct.xfs_inode* %50, i8* %51, i8* %52, i64 %53, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load %struct.inode*, %struct.inode** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @xfs_forget_acl(%struct.inode* %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %44
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @xfs_attr_remove(%struct.xfs_inode*, i8*, i32) #1

declare dso_local i32 @xfs_attr_set(%struct.xfs_inode*, i8*, i8*, i64, i32) #1

declare dso_local i32 @xfs_forget_acl(%struct.inode*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
