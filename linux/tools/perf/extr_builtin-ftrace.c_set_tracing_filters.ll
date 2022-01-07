; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_set_tracing_filters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_set_tracing_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ftrace = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set_ftrace_filter\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"set_ftrace_notrace\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"set_graph_function\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"set_graph_notrace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ftrace*)* @set_tracing_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tracing_filters(%struct.perf_ftrace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_ftrace*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_ftrace* %0, %struct.perf_ftrace** %3, align 8
  %5 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %6 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %5, i32 0, i32 3
  %7 = call i32 @__set_tracing_filter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %14 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %13, i32 0, i32 2
  %15 = call i32 @__set_tracing_filter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %12
  %21 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %22 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %21, i32 0, i32 1
  %23 = call i32 @__set_tracing_filter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %30 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %29, i32 0, i32 0
  %31 = call i32 @__set_tracing_filter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %26, %18, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @__set_tracing_filter(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
