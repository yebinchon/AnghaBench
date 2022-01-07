; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_remap_prep.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_remap_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }

@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_remap_prep(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.xfs_inode*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.xfs_inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %14, align 8
  %24 = call %struct.xfs_inode* @XFS_I(%struct.inode* %23)
  store %struct.xfs_inode* %24, %struct.xfs_inode** %15, align 8
  %25 = load %struct.file*, %struct.file** %10, align 8
  %26 = call %struct.inode* @file_inode(%struct.file* %25)
  store %struct.inode* %26, %struct.inode** %16, align 8
  %27 = load %struct.inode*, %struct.inode** %16, align 8
  %28 = call %struct.xfs_inode* @XFS_I(%struct.inode* %27)
  store %struct.xfs_inode* %28, %struct.xfs_inode** %17, align 8
  %29 = load %struct.inode*, %struct.inode** %14, align 8
  %30 = load %struct.inode*, %struct.inode** %16, align 8
  %31 = icmp eq %struct.inode* %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %18, align 4
  %33 = load %struct.inode*, %struct.inode** %14, align 8
  %34 = load %struct.inode*, %struct.inode** %16, align 8
  %35 = call i32 @xfs_iolock_two_inodes_and_break_layout(%struct.inode* %33, %struct.inode* %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %7, align 4
  br label %142

40:                                               ; preds = %6
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %15, align 8
  %45 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %46 = call i32 @xfs_ilock(%struct.xfs_inode* %44, i32 %45)
  br label %53

47:                                               ; preds = %40
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %15, align 8
  %49 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %50 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %51 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %52 = call i32 @xfs_lock_two_inodes(%struct.xfs_inode* %48, i32 %49, %struct.xfs_inode* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %19, align 4
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %15, align 8
  %57 = call i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %61 = call i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %53
  br label %137

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %14, align 8
  %66 = call i64 @IS_DAX(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %16, align 8
  %70 = call i64 @IS_DAX(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  br label %137

73:                                               ; preds = %68
  %74 = load %struct.file*, %struct.file** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.file*, %struct.file** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @generic_remap_file_range_prep(%struct.file* %74, i64 %75, %struct.file* %76, i64 %77, i64* %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %73
  %84 = load i64*, i64** %12, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %73
  br label %137

88:                                               ; preds = %83
  %89 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %90 = call i32 @xfs_qm_dqattach(%struct.xfs_inode* %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %137

94:                                               ; preds = %88
  %95 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @xfs_reflink_zero_posteof(%struct.xfs_inode* %95, i64 %96)
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %137

101:                                              ; preds = %94
  %102 = load %struct.xfs_inode*, %struct.xfs_inode** %15, align 8
  %103 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %104 = call i32 @xfs_reflink_set_inode_flag(%struct.xfs_inode* %102, %struct.xfs_inode* %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %137

108:                                              ; preds = %101
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %111 = call i64 @XFS_ISIZE(%struct.xfs_inode* %110)
  %112 = icmp sgt i64 %109, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i64*, i64** %12, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %118 = call i64 @XFS_ISIZE(%struct.xfs_inode* %117)
  %119 = sub nsw i64 %116, %118
  %120 = add nsw i64 %115, %119
  store i64 %120, i64* %20, align 8
  %121 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %122 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %123 = call i64 @XFS_ISIZE(%struct.xfs_inode* %122)
  %124 = load i64, i64* %20, align 8
  %125 = call i32 @xfs_flush_unmap_range(%struct.xfs_inode* %121, i64 %123, i64 %124)
  store i32 %125, i32* %19, align 4
  br label %132

126:                                              ; preds = %108
  %127 = load %struct.xfs_inode*, %struct.xfs_inode** %17, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i64*, i64** %12, align 8
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @xfs_flush_unmap_range(%struct.xfs_inode* %127, i64 %128, i64 %130)
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %126, %113
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %137

136:                                              ; preds = %132
  store i32 1, i32* %7, align 4
  br label %142

137:                                              ; preds = %135, %107, %100, %93, %87, %72, %63
  %138 = load %struct.file*, %struct.file** %8, align 8
  %139 = load %struct.file*, %struct.file** %10, align 8
  %140 = call i32 @xfs_reflink_remap_unlock(%struct.file* %138, %struct.file* %139)
  %141 = load i32, i32* %19, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %137, %136, %38
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @xfs_iolock_two_inodes_and_break_layout(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_lock_two_inodes(%struct.xfs_inode*, i32, %struct.xfs_inode*, i32) #1

declare dso_local i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode*) #1

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i32 @generic_remap_file_range_prep(%struct.file*, i64, %struct.file*, i64, i64*, i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_reflink_zero_posteof(%struct.xfs_inode*, i64) #1

declare dso_local i32 @xfs_reflink_set_inode_flag(%struct.xfs_inode*, %struct.xfs_inode*) #1

declare dso_local i64 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_flush_unmap_range(%struct.xfs_inode*, i64, i64) #1

declare dso_local i32 @xfs_reflink_remap_unlock(%struct.file*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
