; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_perf_ftrace_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c_perf_ftrace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ftrace = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"ftrace.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ftrace.tracer\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"function_graph\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Please select \22function_graph\22 (default) or \22function\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @perf_ftrace_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_ftrace_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_ftrace*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.perf_ftrace*
  store %struct.perf_ftrace* %10, %struct.perf_ftrace** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strstarts(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %20
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.perf_ftrace*, %struct.perf_ftrace** %8, align 8
  %31 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %4, align 4
  br label %34

32:                                               ; preds = %24
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %28, %19, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @strstarts(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
