; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c___bpf_probe_register.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c___bpf_probe_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_raw_event_map = type { i32, i64, i64, %struct.tracepoint* }
%struct.tracepoint = type { i32 }
%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_raw_event_map*, %struct.bpf_prog*)* @__bpf_probe_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_probe_register(%struct.bpf_raw_event_map* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_raw_event_map*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.tracepoint*, align 8
  store %struct.bpf_raw_event_map* %0, %struct.bpf_raw_event_map** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %7 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %7, i32 0, i32 3
  %9 = load %struct.tracepoint*, %struct.tracepoint** %8, align 8
  store %struct.tracepoint* %9, %struct.tracepoint** %6, align 8
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = icmp ugt i64 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %27 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %25
  %39 = load %struct.tracepoint*, %struct.tracepoint** %6, align 8
  %40 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %41 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %45 = call i32 @tracepoint_probe_register(%struct.tracepoint* %39, i8* %43, %struct.bpf_prog* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %35, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @tracepoint_probe_register(%struct.tracepoint*, i8*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
