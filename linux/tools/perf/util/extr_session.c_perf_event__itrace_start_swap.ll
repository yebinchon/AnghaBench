; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__itrace_start_swap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__itrace_start_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, i32)* @perf_event__itrace_start_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__itrace_start_swap(%union.perf_event* %0, i32 %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %union.perf_event*, %union.perf_event** %3, align 8
  %6 = bitcast %union.perf_event* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @bswap_32(i8* %8)
  %10 = load %union.perf_event*, %union.perf_event** %3, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load %union.perf_event*, %union.perf_event** %3, align 8
  %14 = bitcast %union.perf_event* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @bswap_32(i8* %16)
  %18 = load %union.perf_event*, %union.perf_event** %3, align 8
  %19 = bitcast %union.perf_event* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %union.perf_event*, %union.perf_event** %3, align 8
  %25 = load %union.perf_event*, %union.perf_event** %3, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 1
  %28 = call i32 @swap_sample_id_all(%union.perf_event* %24, %struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i32 @swap_sample_id_all(%union.perf_event*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
