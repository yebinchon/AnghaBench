; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_uprobe_trace_def.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_synthesize_uprobe_trace_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { %struct.probe_trace_point }
%struct.probe_trace_point = type { i64, i32, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s:0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(0x%lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_event*, %struct.strbuf*)* @synthesize_uprobe_trace_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_uprobe_trace_def(%struct.probe_trace_event* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.probe_trace_event*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.probe_trace_point*, align 8
  %7 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %8 = load %struct.probe_trace_event*, %struct.probe_trace_event** %4, align 8
  %9 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %8, i32 0, i32 0
  store %struct.probe_trace_point* %9, %struct.probe_trace_point** %6, align 8
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = load %struct.probe_trace_point*, %struct.probe_trace_point** %6, align 8
  %12 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.probe_trace_point*, %struct.probe_trace_point** %6, align 8
  %16 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (%struct.strbuf*, i8*, i64, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.probe_trace_point*, %struct.probe_trace_point** %6, align 8
  %23 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = call i32 (...) @uprobe_ref_ctr_is_supported()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %41

30:                                               ; preds = %26
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = load %struct.probe_trace_point*, %struct.probe_trace_point** %6, align 8
  %33 = getelementptr inbounds %struct.probe_trace_point, %struct.probe_trace_point* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.strbuf*, i8*, i64, ...) @strbuf_addf(%struct.strbuf* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %21, %2
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 -1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64, ...) #1

declare dso_local i32 @uprobe_ref_ctr_is_supported(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
