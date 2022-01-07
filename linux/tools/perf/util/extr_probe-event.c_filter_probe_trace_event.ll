; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_filter_probe_trace_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_filter_probe_trace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i8*, i32 }
%struct.strfilter = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_event*, %struct.strfilter*)* @filter_probe_trace_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_probe_trace_event(%struct.probe_trace_event* %0, %struct.strfilter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.probe_trace_event*, align 8
  %5 = alloca %struct.strfilter*, align 8
  %6 = alloca [128 x i8], align 16
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %4, align 8
  store %struct.strfilter* %1, %struct.strfilter** %5, align 8
  %7 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %8 = load %struct.probe_trace_event*, %struct.probe_trace_event** %4, align 8
  %9 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strfilter__compare(%struct.strfilter* %7, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %16 = load %struct.probe_trace_event*, %struct.probe_trace_event** %4, align 8
  %17 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.probe_trace_event*, %struct.probe_trace_event** %4, align 8
  %20 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @e_snprintf(i8* %15, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.strfilter*, %struct.strfilter** %5, align 8
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %28 = call i32 @strfilter__compare(%struct.strfilter* %26, i8* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %24, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @strfilter__compare(%struct.strfilter*, i8*) #1

declare dso_local i64 @e_snprintf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
