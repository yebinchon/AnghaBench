; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_log_format.h_xfs_blft_to_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_log_format.h_xfs_blft_to_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf_log_format = type { i32 }

@XFS_BLFT_UNKNOWN_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_MAX_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_MASK = common dso_local global i32 0, align 4
@XFS_BLFT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf_log_format*, i32)* @xfs_blft_to_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_blft_to_flags(%struct.xfs_buf_log_format* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_buf_log_format*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_buf_log_format* %0, %struct.xfs_buf_log_format** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_BLFT_UNKNOWN_BUF, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @XFS_BLFT_MAX_BUF, align 4
  %11 = icmp ult i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @XFS_BLFT_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @XFS_BLFT_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @XFS_BLFT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.xfs_buf_log_format*, %struct.xfs_buf_log_format** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_buf_log_format, %struct.xfs_buf_log_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
