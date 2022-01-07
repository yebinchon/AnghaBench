; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_eof_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_eof_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32, i64, i64 }

@XFS_MOUNT_SWALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xfs_eof_alignment(%struct.xfs_inode* %0, i64 %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %7, i32 0, i32 0
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  store %struct.xfs_mount* %9, %struct.xfs_mount** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %11 = call i32 @XFS_IS_REALTIME_INODE(%struct.xfs_inode* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @XFS_MOUNT_SWALLOC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  br label %39

29:                                               ; preds = %18, %13
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %44 = call i64 @XFS_ISIZE(%struct.xfs_inode* %43)
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @XFS_FSB_TO_B(%struct.xfs_mount* %45, i64 %46)
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %49, %42, %39
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @roundup_64(i64 %58, i64 %59)
  store i64 %60, i64* %6, align 8
  br label %63

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i32 @XFS_IS_REALTIME_INODE(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_FSB_TO_B(%struct.xfs_mount*, i64) #1

declare dso_local i64 @roundup_64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
