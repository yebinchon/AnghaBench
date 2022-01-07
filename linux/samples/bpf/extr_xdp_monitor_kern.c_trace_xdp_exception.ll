; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_kern.c_trace_xdp_exception.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_kern.c_trace_xdp_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_exception_ctx = type { i64 }

@XDP_REDIRECT = common dso_local global i64 0, align 8
@XDP_UNKNOWN = common dso_local global i64 0, align 8
@exception_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_xdp_exception(%struct.xdp_exception_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_exception_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.xdp_exception_ctx* %0, %struct.xdp_exception_ctx** %3, align 8
  %6 = load %struct.xdp_exception_ctx*, %struct.xdp_exception_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.xdp_exception_ctx, %struct.xdp_exception_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @XDP_REDIRECT, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @XDP_UNKNOWN, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %12, %1
  %15 = call i32* @bpf_map_lookup_elem(i32* @exception_cnt, i64* %5)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %23

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32* @bpf_map_lookup_elem(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
