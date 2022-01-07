; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_calc_crc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_dinode_calc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_dinode = type { i32, i32 }

@XFS_DINODE_CRC_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dinode_calc_crc(%struct.xfs_mount* %0, %struct.xfs_dinode* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_dinode*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_dinode* %1, %struct.xfs_dinode** %4, align 8
  %6 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_2__* %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %17 = bitcast %struct.xfs_dinode* %16 to i8*
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XFS_DINODE_CRC_OFF, align 4
  %23 = call i32 @xfs_start_cksum_update(i8* %17, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @xfs_end_cksum(i32 %24)
  %26 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_start_cksum_update(i8*, i32, i32) #1

declare dso_local i32 @xfs_end_cksum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
