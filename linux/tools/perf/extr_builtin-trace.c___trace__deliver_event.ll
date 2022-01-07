; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c___trace__deliver_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c___trace__deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, %struct.evlist* }
%struct.evlist = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Can't parse sample, err = %d, skipping...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %union.perf_event*)* @__trace__deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__trace__deliver_event(%struct.trace* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.trace*, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %struct.perf_sample, align 4
  %7 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  %8 = load %struct.trace*, %struct.trace** %3, align 8
  %9 = getelementptr inbounds %struct.trace, %struct.trace* %8, i32 0, i32 1
  %10 = load %struct.evlist*, %struct.evlist** %9, align 8
  store %struct.evlist* %10, %struct.evlist** %5, align 8
  %11 = load %struct.evlist*, %struct.evlist** %5, align 8
  %12 = load %union.perf_event*, %union.perf_event** %4, align 8
  %13 = call i32 @perf_evlist__parse_sample(%struct.evlist* %11, %union.perf_event* %12, %struct.perf_sample* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.trace*, %struct.trace** %3, align 8
  %18 = getelementptr inbounds %struct.trace, %struct.trace* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.trace*, %struct.trace** %3, align 8
  %24 = load %union.perf_event*, %union.perf_event** %4, align 8
  %25 = call i32 @trace__handle_event(%struct.trace* %23, %union.perf_event* %24, %struct.perf_sample* %6)
  br label %26

26:                                               ; preds = %22, %16
  ret i32 0
}

declare dso_local i32 @perf_evlist__parse_sample(%struct.evlist*, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @trace__handle_event(%struct.trace*, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
