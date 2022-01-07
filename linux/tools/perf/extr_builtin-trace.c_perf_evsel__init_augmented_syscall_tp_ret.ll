; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_augmented_syscall_tp_ret.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_augmented_syscall_tp_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, %struct.syscall_tp* }
%struct.syscall_tp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*)* @perf_evsel__init_augmented_syscall_tp_ret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__init_augmented_syscall_tp_ret(%struct.evsel* %0) #0 {
  %2 = alloca %struct.evsel*, align 8
  %3 = alloca %struct.syscall_tp*, align 8
  store %struct.evsel* %0, %struct.evsel** %2, align 8
  %4 = load %struct.evsel*, %struct.evsel** %2, align 8
  %5 = getelementptr inbounds %struct.evsel, %struct.evsel* %4, i32 0, i32 1
  %6 = load %struct.syscall_tp*, %struct.syscall_tp** %5, align 8
  store %struct.syscall_tp* %6, %struct.syscall_tp** %3, align 8
  %7 = load %struct.syscall_tp*, %struct.syscall_tp** %3, align 8
  %8 = getelementptr inbounds %struct.syscall_tp, %struct.syscall_tp* %7, i32 0, i32 1
  %9 = load %struct.syscall_tp*, %struct.syscall_tp** %3, align 8
  %10 = getelementptr inbounds %struct.syscall_tp, %struct.syscall_tp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 4
  %14 = load %struct.evsel*, %struct.evsel** %2, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @__tp_field__init_uint(i32* %8, i32 4, i64 %13, i32 %16)
  ret i32 %17
}

declare dso_local i32 @__tp_field__init_uint(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
