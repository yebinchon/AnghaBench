; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_initxattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iops.c_xfs_initxattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xattr = type { i32, i32, i32* }
%struct.xfs_inode = type { i32 }

@ATTR_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.xattr*, i8*)* @xfs_initxattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_initxattrs(%struct.inode* %0, %struct.xattr* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.xattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xattr*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.xattr* %1, %struct.xattr** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.xfs_inode* @XFS_I(%struct.inode* %10)
  store %struct.xfs_inode* %11, %struct.xfs_inode** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.xattr*, %struct.xattr** %5, align 8
  store %struct.xattr* %12, %struct.xattr** %7, align 8
  br label %13

13:                                               ; preds = %35, %3
  %14 = load %struct.xattr*, %struct.xattr** %7, align 8
  %15 = getelementptr inbounds %struct.xattr, %struct.xattr* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %20 = load %struct.xattr*, %struct.xattr** %7, align 8
  %21 = getelementptr inbounds %struct.xattr, %struct.xattr* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.xattr*, %struct.xattr** %7, align 8
  %24 = getelementptr inbounds %struct.xattr, %struct.xattr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xattr*, %struct.xattr** %7, align 8
  %27 = getelementptr inbounds %struct.xattr, %struct.xattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATTR_SECURE, align 4
  %30 = call i32 @xfs_attr_set(%struct.xfs_inode* %19, i32* %22, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %38

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.xattr*, %struct.xattr** %7, align 8
  %37 = getelementptr inbounds %struct.xattr, %struct.xattr* %36, i32 1
  store %struct.xattr* %37, %struct.xattr** %7, align 8
  br label %13

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @xfs_attr_set(%struct.xfs_inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
