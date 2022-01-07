; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ip_callchain = type { i32, i64* }
%struct.thread_stack = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_stack__sample(%struct.thread* %0, i32 %1, %struct.ip_callchain* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_callchain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.thread_stack*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ip_callchain* %2, %struct.ip_callchain** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.thread_stack* @thread__stack(%struct.thread* %18, i32 %19)
  store %struct.thread_stack* %20, %struct.thread_stack** %13, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @callchain_context(i64 %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %28 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %109

29:                                               ; preds = %6
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %32 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %37 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 %35, i64* %39, align 8
  %40 = load %struct.thread_stack*, %struct.thread_stack** %13, align 8
  %41 = icmp ne %struct.thread_stack* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %44 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %43, i32 0, i32 0
  store i32 2, i32* %44, align 8
  br label %109

45:                                               ; preds = %29
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %15, align 8
  store i64 2, i64* %16, align 8
  store i64 1, i64* %17, align 8
  br label %47

47:                                               ; preds = %99, %45
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %17, align 8
  %53 = load %struct.thread_stack*, %struct.thread_stack** %13, align 8
  %54 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ule i64 %52, %55
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i1 [ false, %47 ], [ %56, %51 ]
  br i1 %58, label %59, label %104

59:                                               ; preds = %57
  %60 = load %struct.thread_stack*, %struct.thread_stack** %13, align 8
  %61 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.thread_stack*, %struct.thread_stack** %13, align 8
  %64 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %17, align 8
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @callchain_context(i64 %71, i64 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %59
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub i64 %79, 1
  %81 = icmp uge i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %104

83:                                               ; preds = %77
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %86 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %16, align 8
  %90 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 %84, i64* %90, align 8
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %83, %59
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %95 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %16, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %17, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %17, align 8
  br label %47

104:                                              ; preds = %82, %57
  %105 = load i64, i64* %16, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.ip_callchain*, %struct.ip_callchain** %9, align 8
  %108 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %42, %26
  ret void
}

declare dso_local %struct.thread_stack* @thread__stack(%struct.thread*, i32) #1

declare dso_local i64 @callchain_context(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
