; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__trace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_trace = type { i32 }
%struct.thread = type { i32 }

@PERF_COLOR_RED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WARNING: not enough memory, dropping samples!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_trace* (%struct.thread*, i32*)* @thread__trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_trace* @thread__trace(%struct.thread* %0, i32* %1) #0 {
  %3 = alloca %struct.thread_trace*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.thread_trace*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.thread*, %struct.thread** %4, align 8
  %8 = icmp eq %struct.thread* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = call %struct.thread_trace* @thread__priv(%struct.thread* %11)
  %13 = icmp eq %struct.thread_trace* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = call i32 (...) @thread_trace__new()
  %17 = call i32 @thread__set_priv(%struct.thread* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = call %struct.thread_trace* @thread__priv(%struct.thread* %19)
  %21 = icmp eq %struct.thread_trace* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %31

23:                                               ; preds = %18
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = call %struct.thread_trace* @thread__priv(%struct.thread* %24)
  store %struct.thread_trace* %25, %struct.thread_trace** %6, align 8
  %26 = load %struct.thread_trace*, %struct.thread_trace** %6, align 8
  %27 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.thread_trace*, %struct.thread_trace** %6, align 8
  store %struct.thread_trace* %30, %struct.thread_trace** %3, align 8
  br label %35

31:                                               ; preds = %22, %9
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @PERF_COLOR_RED, align 4
  %34 = call i32 @color_fprintf(i32* %32, i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.thread_trace* null, %struct.thread_trace** %3, align 8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.thread_trace*, %struct.thread_trace** %3, align 8
  ret %struct.thread_trace* %36
}

declare dso_local %struct.thread_trace* @thread__priv(%struct.thread*) #1

declare dso_local i32 @thread__set_priv(%struct.thread*, i32) #1

declare dso_local i32 @thread_trace__new(...) #1

declare dso_local i32 @color_fprintf(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
