; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/s390/util/extr_kvm-stat.c_event_icpt_insn_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/s390/util/extr_kvm-stat.c_event_icpt_insn_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.event_key = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"instruction\00", align 1
@sie_icpt_insn_codes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evsel*, %struct.perf_sample*, %struct.event_key*)* @event_icpt_insn_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_icpt_insn_get_key(%struct.evsel* %0, %struct.perf_sample* %1, %struct.event_key* %2) #0 {
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.event_key*, align 8
  %7 = alloca i64, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store %struct.event_key* %2, %struct.event_key** %6, align 8
  %8 = load %struct.evsel*, %struct.evsel** %4, align 8
  %9 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %10 = call i64 @perf_evsel__intval(%struct.evsel* %8, %struct.perf_sample* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @icpt_insn_decoder(i64 %11)
  %13 = load %struct.event_key*, %struct.event_key** %6, align 8
  %14 = getelementptr inbounds %struct.event_key, %struct.event_key* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @sie_icpt_insn_codes, align 4
  %16 = load %struct.event_key*, %struct.event_key** %6, align 8
  %17 = getelementptr inbounds %struct.event_key, %struct.event_key* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i64 @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @icpt_insn_decoder(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
