; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_readahead_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_readahead_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buftarg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf_map = type { i32 }
%struct.xfs_buf_ops = type { i32 }

@XBF_TRYLOCK = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@XBF_READ_AHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_readahead_map(%struct.xfs_buftarg* %0, %struct.xfs_buf_map* %1, i32 %2, %struct.xfs_buf_ops* %3) #0 {
  %5 = alloca %struct.xfs_buftarg*, align 8
  %6 = alloca %struct.xfs_buf_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_buf_ops*, align 8
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %5, align 8
  store %struct.xfs_buf_map* %1, %struct.xfs_buf_map** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.xfs_buf_ops* %3, %struct.xfs_buf_ops** %8, align 8
  %9 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bdi_read_congested(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %28

17:                                               ; preds = %4
  %18 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %5, align 8
  %19 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @XBF_TRYLOCK, align 4
  %22 = load i32, i32* @XBF_ASYNC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @XBF_READ_AHEAD, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %8, align 8
  %27 = call i32 @xfs_buf_read_map(%struct.xfs_buftarg* %18, %struct.xfs_buf_map* %19, i32 %20, i32 %25, %struct.xfs_buf_ops* %26)
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @bdi_read_congested(i32) #1

declare dso_local i32 @xfs_buf_read_map(%struct.xfs_buftarg*, %struct.xfs_buf_map*, i32, i32, %struct.xfs_buf_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
