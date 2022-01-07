; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c___synthesize_probe_trace_arg_ref.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c___synthesize_probe_trace_arg_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%+ld(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_arg_ref*, %struct.strbuf*, i32)* @__synthesize_probe_trace_arg_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.probe_trace_arg_ref*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.probe_trace_arg_ref* %0, %struct.probe_trace_arg_ref** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %5, align 8
  %10 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %9, i32 0, i32 1
  %11 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %10, align 8
  %12 = icmp ne %struct.probe_trace_arg_ref* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %5, align 8
  %15 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %14, i32 0, i32 1
  %16 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %15, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref* %16, %struct.strbuf* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %28 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %5, align 8
  %29 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strbuf_addf(%struct.strbuf* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
