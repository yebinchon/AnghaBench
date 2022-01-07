; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_free_file_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_free_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.TYPE_3__ = type { i32 }

@xfs_iomap_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_free_file_space(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 0
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %17 = call i32 @trace_xfs_free_file_space(%struct.xfs_inode* %16)
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %19 = call i32 @xfs_qm_dqattach(%struct.xfs_inode* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %122

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %122

28:                                               ; preds = %24
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @xfs_flush_unmap_range(%struct.xfs_inode* %29, i64 %30, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %122

37:                                               ; preds = %28
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %38, i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %41, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i32 @xfs_unmap_extent(%struct.xfs_inode* %55, i64 %56, i64 %59, i32* %11)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %122

65:                                               ; preds = %54
  br label %50

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %70 = call i64 @XFS_ISIZE(%struct.xfs_inode* %69)
  %71 = icmp sge i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %122

73:                                               ; preds = %67
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %78 = call i64 @XFS_ISIZE(%struct.xfs_inode* %77)
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %82 = call i64 @XFS_ISIZE(%struct.xfs_inode* %81)
  %83 = load i64, i64* %6, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %87 = call %struct.TYPE_3__* @VFS_I(%struct.xfs_inode* %86)
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @iomap_zero_range(%struct.TYPE_3__* %87, i64 %88, i64 %89, i32* null, i32* @xfs_iomap_ops)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %122

95:                                               ; preds = %85
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %100 = call i64 @XFS_ISIZE(%struct.xfs_inode* %99)
  %101 = icmp sge i64 %98, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %95
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @offset_in_page(i64 %105)
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %110 = call %struct.TYPE_3__* @VFS_I(%struct.xfs_inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = call i32 @round_down(i64 %115, i32 %116)
  %118 = load i32, i32* @LLONG_MAX, align 4
  %119 = call i32 @filemap_write_and_wait_range(i32 %112, i32 %117, i32 %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %108, %102, %95
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %93, %72, %63, %35, %27, %22
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @trace_xfs_free_file_space(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_flush_unmap_range(%struct.xfs_inode*, i64, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_unmap_extent(%struct.xfs_inode*, i64, i64, i32*) #1

declare dso_local i64 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i32 @iomap_zero_range(%struct.TYPE_3__*, i64, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @round_down(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
