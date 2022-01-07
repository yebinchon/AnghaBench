; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_xattr_iomap_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_xattr_iomap_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_2__, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_bmbt_irec = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_BMAPI_ATTRFORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32, %struct.iomap*)* @xfs_xattr_iomap_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_xattr_iomap_begin(%struct.inode* %0, i64 %1, i64 %2, i32 %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.xfs_inode*, align 8
  %13 = alloca %struct.xfs_mount*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.xfs_bmbt_irec, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.xfs_inode* @XFS_I(%struct.inode* %20)
  store %struct.xfs_inode* %21, %struct.xfs_inode** %12, align 8
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 1
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %23, align 8
  store %struct.xfs_mount* %24, %struct.xfs_mount** %13, align 8
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %25, i64 %26)
  store i64 %27, i64* %14, align 8
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %28, i64 %31)
  store i64 %32, i64* %15, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %34 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %84

39:                                               ; preds = %5
  %40 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %41 = call i32 @xfs_ilock_attr_map_shared(%struct.xfs_inode* %40)
  store i32 %41, i32* %19, align 4
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %43 = call i32 @XFS_IFORK_Q(%struct.xfs_inode* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %47 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %18, align 4
  br label %70

54:                                               ; preds = %45
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %56 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %69 = call i32 @xfs_bmapi_read(%struct.xfs_inode* %63, i64 %64, i64 %67, %struct.xfs_bmbt_irec* %16, i32* %17, i32 %68)
  store i32 %69, i32* %18, align 4
  br label %70

70:                                               ; preds = %54, %51
  %71 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @xfs_iunlock(%struct.xfs_inode* %71, i32 %72)
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %6, align 4
  br label %84

78:                                               ; preds = %70
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %82 = load %struct.iomap*, %struct.iomap** %11, align 8
  %83 = call i32 @xfs_bmbt_to_iomap(%struct.xfs_inode* %81, %struct.iomap* %82, %struct.xfs_bmbt_irec* %16, i32 0)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %78, %76, %36
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock_attr_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_bmapi_read(%struct.xfs_inode*, i64, i64, %struct.xfs_bmbt_irec*, i32*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmbt_to_iomap(%struct.xfs_inode*, %struct.iomap*, %struct.xfs_bmbt_irec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
