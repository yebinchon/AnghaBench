; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_get_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_metrics_block = type { i32 }

@TCP_METRICS_RECLAIM_DEPTH = common dso_local global i32 0, align 4
@TCP_METRICS_RECLAIM_PTR = common dso_local global %struct.tcp_metrics_block* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_metrics_block* (%struct.tcp_metrics_block*, i32)* @tcp_get_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_metrics_block* @tcp_get_encode(%struct.tcp_metrics_block* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_metrics_block*, align 8
  %4 = alloca %struct.tcp_metrics_block*, align 8
  %5 = alloca i32, align 4
  store %struct.tcp_metrics_block* %0, %struct.tcp_metrics_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %7 = icmp ne %struct.tcp_metrics_block* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  store %struct.tcp_metrics_block* %9, %struct.tcp_metrics_block** %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TCP_METRICS_RECLAIM_DEPTH, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** @TCP_METRICS_RECLAIM_PTR, align 8
  store %struct.tcp_metrics_block* %15, %struct.tcp_metrics_block** %3, align 8
  br label %17

16:                                               ; preds = %10
  store %struct.tcp_metrics_block* null, %struct.tcp_metrics_block** %3, align 8
  br label %17

17:                                               ; preds = %16, %14, %8
  %18 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %3, align 8
  ret %struct.tcp_metrics_block* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
