; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_setup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-bts.c_intel_bts_setup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bts = type { i32, i64 }
%struct.auxtrace_queue = type { i32, i32, %struct.intel_bts_queue*, i32 }
%struct.intel_bts_queue = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_bts*, %struct.auxtrace_queue*, i32)* @intel_bts_setup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_bts_setup_queue(%struct.intel_bts* %0, %struct.auxtrace_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_bts*, align 8
  %6 = alloca %struct.auxtrace_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_bts_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_bts* %0, %struct.intel_bts** %5, align 8
  store %struct.auxtrace_queue* %1, %struct.auxtrace_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %11 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %10, i32 0, i32 2
  %12 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %11, align 8
  store %struct.intel_bts_queue* %12, %struct.intel_bts_queue** %8, align 8
  %13 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %14 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %13, i32 0, i32 3
  %15 = call i64 @list_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %20 = icmp ne %struct.intel_bts_queue* %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = load %struct.intel_bts*, %struct.intel_bts** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.intel_bts_queue* @intel_bts_alloc_queue(%struct.intel_bts* %22, i32 %23)
  store %struct.intel_bts_queue* %24, %struct.intel_bts_queue** %8, align 8
  %25 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %26 = icmp ne %struct.intel_bts_queue* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %94

30:                                               ; preds = %21
  %31 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %32 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %33 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %32, i32 0, i32 2
  store %struct.intel_bts_queue* %31, %struct.intel_bts_queue** %33, align 8
  %34 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %35 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %40 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %43 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %30
  %45 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %46 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %49 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %18
  %51 = load %struct.intel_bts*, %struct.intel_bts** %5, align 8
  %52 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %94

56:                                               ; preds = %50
  %57 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %58 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %56
  %62 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %63 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp ne %struct.TYPE_2__* %64, null
  br i1 %65, label %93, label %66

66:                                               ; preds = %61
  %67 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %68 = call %struct.TYPE_2__* @auxtrace_buffer__next(%struct.auxtrace_queue* %67, i32* null)
  %69 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %70 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %69, i32 0, i32 2
  store %struct.TYPE_2__* %68, %struct.TYPE_2__** %70, align 8
  %71 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %72 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %94

76:                                               ; preds = %66
  %77 = load %struct.intel_bts*, %struct.intel_bts** %5, align 8
  %78 = getelementptr inbounds %struct.intel_bts, %struct.intel_bts* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %81 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @auxtrace_heap__add(i32* %78, i32 %79, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %94

90:                                               ; preds = %76
  %91 = load %struct.intel_bts_queue*, %struct.intel_bts_queue** %8, align 8
  %92 = getelementptr inbounds %struct.intel_bts_queue, %struct.intel_bts_queue* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %61, %56
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %88, %75, %55, %27, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.intel_bts_queue* @intel_bts_alloc_queue(%struct.intel_bts*, i32) #1

declare dso_local %struct.TYPE_2__* @auxtrace_buffer__next(%struct.auxtrace_queue*, i32*) #1

declare dso_local i32 @auxtrace_heap__add(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
