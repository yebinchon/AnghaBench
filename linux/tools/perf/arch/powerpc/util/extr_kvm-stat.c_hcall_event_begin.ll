; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_kvm-stat.c_hcall_event_begin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_kvm-stat.c_hcall_event_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.event_key = type { i32 }

@kvm_events_tp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*, %struct.event_key*)* @hcall_event_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hcall_event_begin(%struct.evsel* %0, %struct.perf_sample* %1, %struct.event_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.event_key*, align 8
  store %struct.evsel* %0, %struct.evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.event_key* %2, %struct.event_key** %7, align 8
  %8 = load %struct.evsel*, %struct.evsel** %5, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @kvm_events_tp, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcmp(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.evsel*, %struct.evsel** %5, align 8
  %18 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %19 = load %struct.event_key*, %struct.event_key** %7, align 8
  %20 = call i32 @hcall_event_get_key(%struct.evsel* %17, %struct.perf_sample* %18, %struct.event_key* %19)
  store i32 1, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @hcall_event_get_key(%struct.evsel*, %struct.perf_sample*, %struct.event_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
