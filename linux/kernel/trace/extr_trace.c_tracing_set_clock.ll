; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.trace_array = type { i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@trace_clocks = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@trace_types_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracing_set_clock(%struct.trace_array* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trace_clocks, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trace_clocks, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i32 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %27

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %22, %7
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trace_clocks, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %27
  %36 = call i32 @mutex_lock(i32* @trace_types_lock)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %39 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %41 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @trace_clocks, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ring_buffer_set_clock(i64 %43, i32 %49)
  %51 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %52 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %51, i32 0, i32 2
  %53 = call i32 @tracing_reset_online_cpus(%struct.TYPE_4__* %52)
  %54 = call i32 @mutex_unlock(i32* @trace_types_lock)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %35, %32
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ring_buffer_set_clock(i64, i32) #1

declare dso_local i32 @tracing_reset_online_cpus(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
