; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__queue_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__queue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_queues = type { i32, i32, i32, i32, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32, i64, i64, i32 }
%struct.auxtrace_buffer = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [59 x i8] c"auxtrace queue conflict: cpu %d, tid %d vs cpu %d, tid %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_queues*, i32, %struct.auxtrace_buffer*)* @auxtrace_queues__queue_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxtrace_queues__queue_buffer(%struct.auxtrace_queues* %0, i32 %1, %struct.auxtrace_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auxtrace_queues*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auxtrace_buffer*, align 8
  %8 = alloca %struct.auxtrace_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.auxtrace_queues* %0, %struct.auxtrace_queues** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.auxtrace_buffer* %2, %struct.auxtrace_buffer** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %12 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  %19 = call i32 @auxtrace_queues__grow(%struct.auxtrace_queues* %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %99

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %27 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %26, i32 0, i32 4
  %28 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %28, i64 %30
  store %struct.auxtrace_queue* %31, %struct.auxtrace_queue** %8, align 8
  %32 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %33 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %25
  %37 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %38 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %43 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %48 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %82

49:                                               ; preds = %25
  %50 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %54 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %62 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %57, %49
  %66 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %67 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %70 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %76 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %71, i64 %74, i64 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %99

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %36
  %83 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %84 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = sext i32 %85 to i64
  %88 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %91 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %90, i32 0, i32 2
  %92 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %8, align 8
  %93 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %92, i32 0, i32 3
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %96 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %5, align 8
  %98 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %82, %65, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @auxtrace_queues__grow(%struct.auxtrace_queues*, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
