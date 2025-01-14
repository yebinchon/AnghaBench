; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.h_xfs_buf_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.h_xfs_buf_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buftarg = type { i32 }
%struct.xfs_buf_ops = type { i32 }

@map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buftarg*, i32, i64, %struct.xfs_buf_ops*)* @xfs_buf_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_buf_readahead(%struct.xfs_buftarg* %0, i32 %1, i64 %2, %struct.xfs_buf_ops* %3) #0 {
  %5 = alloca %struct.xfs_buftarg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_buf_ops*, align 8
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.xfs_buf_ops* %3, %struct.xfs_buf_ops** %8, align 8
  %9 = load i32, i32* @map, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @DEFINE_SINGLE_BUF_MAP(i32 %9, i32 %10, i64 %11)
  %13 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %5, align 8
  %14 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %8, align 8
  call void @xfs_buf_readahead_map(%struct.xfs_buftarg* %13, i32* @map, i32 1, %struct.xfs_buf_ops* %14)
  ret void
}

declare dso_local i32 @DEFINE_SINGLE_BUF_MAP(i32, i32, i64) #1

declare dso_local void @xfs_buf_readahead_map(%struct.xfs_buftarg*, i32*, i32, %struct.xfs_buf_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
