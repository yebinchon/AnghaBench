; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Out of memory: no thread stack\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PERF_IP_FLAG_CALL = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_END = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_BEGIN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_stack__event(%struct.thread* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.thread_stack*, align 8
  %17 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.thread*, %struct.thread** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.thread_stack* @thread__stack(%struct.thread* %18, i32 %19)
  store %struct.thread_stack* %20, %struct.thread_stack** %16, align 8
  %21 = load %struct.thread*, %struct.thread** %9, align 8
  %22 = icmp ne %struct.thread* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %118

26:                                               ; preds = %7
  %27 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %28 = icmp ne %struct.thread_stack* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load %struct.thread*, %struct.thread** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.thread_stack* @thread_stack__new(%struct.thread* %30, i32 %31, i32* null)
  store %struct.thread_stack* %32, %struct.thread_stack** %16, align 8
  %33 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %34 = icmp ne %struct.thread_stack* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %118

39:                                               ; preds = %29
  %40 = load i64, i64* %15, align 8
  %41 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %42 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %26
  %44 = load i64, i64* %15, align 8
  %45 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %46 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %51 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.thread*, %struct.thread** %9, align 8
  %56 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %57 = call i32 @__thread_stack__flush(%struct.thread* %55, %struct.thread_stack* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %61 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %43
  %63 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %64 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %118

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @PERF_IP_FLAG_CALL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %118

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %14, align 8
  %80 = add nsw i64 %78, %79
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %118

85:                                               ; preds = %77
  %86 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @thread_stack__push(%struct.thread_stack* %86, i64 %87, i32 %90)
  store i32 %91, i32* %8, align 4
  br label %118

92:                                               ; preds = %68
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @thread_stack__pop(%struct.thread_stack* %98, i64 %99)
  %101 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %102 = call i32 @thread_stack__pop_trace_end(%struct.thread_stack* %101)
  br label %116

103:                                              ; preds = %92
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @PERF_IP_FLAG_RETURN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @thread_stack__pop(%struct.thread_stack* %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %108, %103
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %85, %84, %76, %67, %35, %23
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.thread_stack* @thread__stack(%struct.thread*, i32) #1

declare dso_local %struct.thread_stack* @thread_stack__new(%struct.thread*, i32, i32*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @__thread_stack__flush(%struct.thread*, %struct.thread_stack*) #1

declare dso_local i32 @thread_stack__push(%struct.thread_stack*, i64, i32) #1

declare dso_local i32 @thread_stack__pop(%struct.thread_stack*, i64) #1

declare dso_local i32 @thread_stack__pop_trace_end(%struct.thread_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
