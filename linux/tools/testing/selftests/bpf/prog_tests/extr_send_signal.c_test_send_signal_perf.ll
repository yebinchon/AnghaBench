; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_send_signal.c_test_send_signal_perf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_send_signal.c_test_send_signal_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32 }

@PERF_COUNT_SW_CPU_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_PERF_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"perf_sw_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_send_signal_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_send_signal_perf() #0 {
  %1 = alloca %struct.perf_event_attr, align 4
  %2 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 0
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 1
  %4 = load i32, i32* @PERF_COUNT_SW_CPU_CLOCK, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %1, i32 0, i32 2
  %6 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @BPF_PROG_TYPE_PERF_EVENT, align 4
  %8 = call i32 @test_send_signal_common(%struct.perf_event_attr* %1, i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_send_signal_common(%struct.perf_event_attr*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
