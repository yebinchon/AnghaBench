; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_set_tracing_depth.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_set_tracing_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ftrace = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid graph depth: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"max_graph_depth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ftrace*)* @set_tracing_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tracing_depth(%struct.perf_ftrace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_ftrace*, align 8
  %4 = alloca [16 x i8], align 16
  store %struct.perf_ftrace* %0, %struct.perf_ftrace** %3, align 8
  %5 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %6 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %12 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %17 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %2, align 4
  br label %31

20:                                               ; preds = %10
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %22 = load %struct.perf_ftrace*, %struct.perf_ftrace** %3, align 8
  %23 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i8* %21, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %27 = call i64 @write_tracing_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %15, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @write_tracing_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
