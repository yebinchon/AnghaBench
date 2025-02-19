; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_flush_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_flush_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.super_block* }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_flush_inodes(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca %struct.super_block*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %4 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %4, i32 0, i32 0
  %6 = load %struct.super_block*, %struct.super_block** %5, align 8
  store %struct.super_block* %6, %struct.super_block** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = call i64 @down_read_trylock(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @sync_inodes_sb(%struct.super_block* %12)
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = call i32 @up_read(i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  ret void
}

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @sync_inodes_sb(%struct.super_block*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
