; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_get_trace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_get_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_buffer = type { i64 }
%struct.intel_pt_queue = type { i32, i64, %struct.auxtrace_buffer*, i64, %struct.auxtrace_buffer*, %struct.TYPE_4__* }
%struct.auxtrace_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_buffer*, i8*)* @intel_pt_get_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_trace(%struct.intel_pt_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intel_pt_queue*, align 8
  %7 = alloca %struct.auxtrace_buffer*, align 8
  %8 = alloca %struct.auxtrace_buffer*, align 8
  %9 = alloca %struct.auxtrace_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_pt_buffer* %0, %struct.intel_pt_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.intel_pt_queue*
  store %struct.intel_pt_queue* %12, %struct.intel_pt_queue** %6, align 8
  %13 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %14 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %13, i32 0, i32 4
  %15 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %14, align 8
  store %struct.auxtrace_buffer* %15, %struct.auxtrace_buffer** %7, align 8
  %16 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %17 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %16, i32 0, i32 2
  %18 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %17, align 8
  store %struct.auxtrace_buffer* %18, %struct.auxtrace_buffer** %8, align 8
  %19 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %20 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %94

26:                                               ; preds = %2
  %27 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %28 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %31, align 8
  %33 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %34 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %32, i64 %35
  store %struct.auxtrace_queue* %36, %struct.auxtrace_queue** %9, align 8
  %37 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %9, align 8
  %38 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %39 = call %struct.auxtrace_buffer* @auxtrace_buffer__next(%struct.auxtrace_queue* %37, %struct.auxtrace_buffer* %38)
  store %struct.auxtrace_buffer* %39, %struct.auxtrace_buffer** %7, align 8
  %40 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %41 = icmp ne %struct.auxtrace_buffer* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %26
  %43 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %44 = icmp ne %struct.auxtrace_buffer* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %47 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %94

51:                                               ; preds = %26
  %52 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %53 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %54 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %53, i32 0, i32 4
  store %struct.auxtrace_buffer* %52, %struct.auxtrace_buffer** %54, align 8
  %55 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %56 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %57 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %58 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %4, align 8
  %59 = call i32 @intel_pt_get_buffer(%struct.intel_pt_queue* %55, %struct.auxtrace_buffer* %56, %struct.auxtrace_buffer* %57, %struct.intel_pt_buffer* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %94

64:                                               ; preds = %51
  %65 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %66 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %71 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %79 = icmp ne %struct.auxtrace_buffer* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %82 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %85 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %86 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %85, i32 0, i32 2
  store %struct.auxtrace_buffer* %84, %struct.auxtrace_buffer** %86, align 8
  br label %93

87:                                               ; preds = %72
  %88 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %89 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %88)
  %90 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @intel_pt_get_trace(%struct.intel_pt_buffer* %90, i8* %91)
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %87, %62, %48, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.auxtrace_buffer* @auxtrace_buffer__next(%struct.auxtrace_queue*, %struct.auxtrace_buffer*) #1

declare dso_local i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer*) #1

declare dso_local i32 @intel_pt_get_buffer(%struct.intel_pt_queue*, %struct.auxtrace_buffer*, %struct.auxtrace_buffer*, %struct.intel_pt_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
