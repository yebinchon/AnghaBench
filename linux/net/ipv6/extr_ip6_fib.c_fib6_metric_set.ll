; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_metric_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_metric_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_metrics = type { i32*, i32 }
%struct.fib6_info = type { %struct.dst_metrics* }

@dst_default_metrics = common dso_local global %struct.dst_metrics zeroinitializer, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib6_metric_set(%struct.fib6_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_metrics*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %9 = icmp ne %struct.fib6_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %40

11:                                               ; preds = %3
  %12 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %13 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %12, i32 0, i32 0
  %14 = load %struct.dst_metrics*, %struct.dst_metrics** %13, align 8
  %15 = icmp eq %struct.dst_metrics* %14, @dst_default_metrics
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.dst_metrics* @kzalloc(i32 16, i32 %17)
  store %struct.dst_metrics* %18, %struct.dst_metrics** %7, align 8
  %19 = load %struct.dst_metrics*, %struct.dst_metrics** %7, align 8
  %20 = icmp ne %struct.dst_metrics* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %40

22:                                               ; preds = %16
  %23 = load %struct.dst_metrics*, %struct.dst_metrics** %7, align 8
  %24 = getelementptr inbounds %struct.dst_metrics, %struct.dst_metrics* %23, i32 0, i32 1
  %25 = call i32 @refcount_set(i32* %24, i32 1)
  %26 = load %struct.dst_metrics*, %struct.dst_metrics** %7, align 8
  %27 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %28 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %27, i32 0, i32 0
  store %struct.dst_metrics* %26, %struct.dst_metrics** %28, align 8
  br label %29

29:                                               ; preds = %22, %11
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %32 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %31, i32 0, i32 0
  %33 = load %struct.dst_metrics*, %struct.dst_metrics** %32, align 8
  %34 = getelementptr inbounds %struct.dst_metrics, %struct.dst_metrics* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %30, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %21, %10
  ret void
}

declare dso_local %struct.dst_metrics* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
