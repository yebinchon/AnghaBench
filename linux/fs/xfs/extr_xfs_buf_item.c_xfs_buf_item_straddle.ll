; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_straddle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_straddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }

@XFS_BLF_SHIFT = common dso_local global i32 0, align 4
@XFS_BLF_CHUNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_buf*, i64, i32, i32)* @xfs_buf_item_straddle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_buf_item_straddle(%struct.xfs_buf* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @XFS_BLF_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = call i64 @xfs_buf_offset(%struct.xfs_buf* %9, i64 %15)
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @XFS_BLF_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = call i64 @xfs_buf_offset(%struct.xfs_buf* %17, i64 %23)
  %25 = load i64, i64* @XFS_BLF_CHUNK, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp ne i64 %16, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @xfs_buf_offset(%struct.xfs_buf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
