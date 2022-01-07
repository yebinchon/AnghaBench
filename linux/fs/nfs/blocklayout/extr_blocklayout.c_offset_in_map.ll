; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_offset_in_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_offset_in_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_dev_map = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pnfs_block_dev_map*)* @offset_in_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offset_in_map(i64 %0, %struct.pnfs_block_dev_map* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pnfs_block_dev_map*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.pnfs_block_dev_map* %1, %struct.pnfs_block_dev_map** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.pnfs_block_dev_map*, %struct.pnfs_block_dev_map** %4, align 8
  %7 = getelementptr inbounds %struct.pnfs_block_dev_map, %struct.pnfs_block_dev_map* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.pnfs_block_dev_map*, %struct.pnfs_block_dev_map** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_block_dev_map, %struct.pnfs_block_dev_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pnfs_block_dev_map*, %struct.pnfs_block_dev_map** %4, align 8
  %16 = getelementptr inbounds %struct.pnfs_block_dev_map, %struct.pnfs_block_dev_map* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = icmp slt i64 %11, %18
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i1 [ false, %2 ], [ %19, %10 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
