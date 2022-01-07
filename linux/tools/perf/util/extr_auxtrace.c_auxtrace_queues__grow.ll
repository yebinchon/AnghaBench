; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__grow.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_queues = type { i32, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32, i32, i32, i32, i32 }

@AUXTRACE_INIT_NR_QUEUES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_queues*, i32)* @auxtrace_queues__grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxtrace_queues__grow(%struct.auxtrace_queues* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auxtrace_queues*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.auxtrace_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.auxtrace_queues* %0, %struct.auxtrace_queues** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %10 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AUXTRACE_INIT_NR_QUEUES, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %2
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ult i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %17

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %32 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %133

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.auxtrace_queue* @auxtrace_alloc_queue_array(i32 %43)
  store %struct.auxtrace_queue* %44, %struct.auxtrace_queue** %7, align 8
  %45 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %46 = icmp ne %struct.auxtrace_queue* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %133

50:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %123, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %54 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %126

57:                                               ; preds = %51
  %58 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %59 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %58, i32 0, i32 1
  %60 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %60, i64 %62
  %64 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %63, i32 0, i32 4
  %65 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %65, i64 %67
  %69 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %68, i32 0, i32 4
  %70 = call i32 @list_splice_tail(i32* %64, i32* %69)
  %71 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %72 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %71, i32 0, i32 1
  %73 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %73, i64 %75
  %77 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %79, i64 %81
  %83 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %82, i32 0, i32 3
  store i32 %78, i32* %83, align 4
  %84 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %85 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %84, i32 0, i32 1
  %86 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %86, i64 %88
  %90 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %92, i64 %94
  %96 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %95, i32 0, i32 2
  store i32 %91, i32* %96, align 4
  %97 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %98 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %97, i32 0, i32 1
  %99 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %99, i64 %101
  %103 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %105, i64 %107
  %109 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  %110 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %111 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %110, i32 0, i32 1
  %112 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %112, i64 %114
  %116 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %118, i64 %120
  %122 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %57
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %51

126:                                              ; preds = %51
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %129 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %131 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %4, align 8
  %132 = getelementptr inbounds %struct.auxtrace_queues, %struct.auxtrace_queues* %131, i32 0, i32 1
  store %struct.auxtrace_queue* %130, %struct.auxtrace_queue** %132, align 8
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %47, %39
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.auxtrace_queue* @auxtrace_alloc_queue_array(i32) #1

declare dso_local i32 @list_splice_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
