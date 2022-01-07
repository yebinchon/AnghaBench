; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_wait_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_wait_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.trace_iterator* }
%struct.trace_iterator = type { i32, i64, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @tracing_wait_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_wait_pipe(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 1
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  store %struct.trace_iterator* %8, %struct.trace_iterator** %4, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %11 = call i64 @trace_empty(%struct.trace_iterator* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %13
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tracer_tracing_is_on(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %49

35:                                               ; preds = %29, %23
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %40 = call i32 @wait_on_pipe(%struct.trace_iterator* %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %42 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %35
  br label %9

49:                                               ; preds = %34, %9
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @tracer_tracing_is_on(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_on_pipe(%struct.trace_iterator*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
