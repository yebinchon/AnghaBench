; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freescan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_dir2_data_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_freescan(%struct.xfs_inode* %0, %struct.xfs_dir2_data_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %6 = alloca i32*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_dir2_data_hdr* %1, %struct.xfs_dir2_data_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %5, align 8
  %16 = load i32*, i32** %6, align 8
  call void @xfs_dir2_data_freescan_int(i32 %11, i32 %14, %struct.xfs_dir2_data_hdr* %15, i32* %16)
  ret void
}

declare dso_local void @xfs_dir2_data_freescan_int(i32, i32, %struct.xfs_dir2_data_hdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
