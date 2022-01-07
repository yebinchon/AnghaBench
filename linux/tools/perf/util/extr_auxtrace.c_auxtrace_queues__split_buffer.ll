; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__split_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__split_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_queues = type { i32 }
%struct.auxtrace_buffer = type { i64, i32, i32 }

@BUFFER_LIMIT_FOR_32_BIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_queues*, i32, %struct.auxtrace_buffer*)* @auxtrace_queues__split_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxtrace_queues__split_buffer(%struct.auxtrace_queues* %0, i32 %1, %struct.auxtrace_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auxtrace_queues*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auxtrace_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auxtrace_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.auxtrace_queues* %0, %struct.auxtrace_queues** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.auxtrace_buffer* %2, %struct.auxtrace_buffer** %7, align 8
  %12 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %44, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @BUFFER_LIMIT_FOR_32_BIT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %21 = call %struct.auxtrace_buffer* @memdup(%struct.auxtrace_buffer* %20, i32 16)
  store %struct.auxtrace_buffer* %21, %struct.auxtrace_buffer** %10, align 8
  %22 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %23 = icmp ne %struct.auxtrace_buffer* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %19
  %28 = load i64, i64* @BUFFER_LIMIT_FOR_32_BIT, align 8
  %29 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %30 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %33 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %37 = call i32 @auxtrace_queues__queue_buffer(%struct.auxtrace_queues* %34, i32 %35, %struct.auxtrace_buffer* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %42 = call i32 @auxtrace_buffer__free(%struct.auxtrace_buffer* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %27
  %45 = load i64, i64* @BUFFER_LIMIT_FOR_32_BIT, align 8
  %46 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load i64, i64* @BUFFER_LIMIT_FOR_32_BIT, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %40, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.auxtrace_buffer* @memdup(%struct.auxtrace_buffer*, i32) #1

declare dso_local i32 @auxtrace_queues__queue_buffer(%struct.auxtrace_queues*, i32, %struct.auxtrace_buffer*) #1

declare dso_local i32 @auxtrace_buffer__free(%struct.auxtrace_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
