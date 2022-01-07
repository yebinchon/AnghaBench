; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_get_raw_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_get_raw_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_raw_event_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__start__bpf_raw_tp = common dso_local global %struct.bpf_raw_event_map* null, align 8
@__stop__bpf_raw_tp = common dso_local global %struct.bpf_raw_event_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_raw_event_map* @bpf_get_raw_tracepoint(i8* %0) #0 {
  %2 = alloca %struct.bpf_raw_event_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bpf_raw_event_map*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** @__start__bpf_raw_tp, align 8
  store %struct.bpf_raw_event_map* %5, %struct.bpf_raw_event_map** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %8 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** @__stop__bpf_raw_tp, align 8
  %9 = icmp ult %struct.bpf_raw_event_map* %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcmp(i32 %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  store %struct.bpf_raw_event_map* %20, %struct.bpf_raw_event_map** %2, align 8
  br label %28

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_raw_event_map, %struct.bpf_raw_event_map* %23, i32 1
  store %struct.bpf_raw_event_map* %24, %struct.bpf_raw_event_map** %4, align 8
  br label %6

25:                                               ; preds = %6
  %26 = load i8*, i8** %3, align 8
  %27 = call %struct.bpf_raw_event_map* @bpf_get_raw_tracepoint_module(i8* %26)
  store %struct.bpf_raw_event_map* %27, %struct.bpf_raw_event_map** %2, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.bpf_raw_event_map*, %struct.bpf_raw_event_map** %2, align 8
  ret %struct.bpf_raw_event_map* %29
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.bpf_raw_event_map* @bpf_get_raw_tracepoint_module(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
