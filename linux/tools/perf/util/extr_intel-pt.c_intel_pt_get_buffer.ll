; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_get_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.auxtrace_buffer = type { i64, i32, i32, i64, i32, i64, i32 }
%struct.intel_pt_buffer = type { i32, i64, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_queue*, %struct.auxtrace_buffer*, %struct.auxtrace_buffer*, %struct.intel_pt_buffer*)* @intel_pt_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_buffer(%struct.intel_pt_queue* %0, %struct.auxtrace_buffer* %1, %struct.auxtrace_buffer* %2, %struct.intel_pt_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pt_queue*, align 8
  %7 = alloca %struct.auxtrace_buffer*, align 8
  %8 = alloca %struct.auxtrace_buffer*, align 8
  %9 = alloca %struct.intel_pt_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_pt_queue* %0, %struct.intel_pt_queue** %6, align 8
  store %struct.auxtrace_buffer* %1, %struct.auxtrace_buffer** %7, align 8
  store %struct.auxtrace_buffer* %2, %struct.auxtrace_buffer** %8, align 8
  store %struct.intel_pt_buffer* %3, %struct.intel_pt_buffer** %9, align 8
  %12 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %4
  %17 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %18 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @perf_data__fd(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @auxtrace_buffer__get_data(%struct.auxtrace_buffer* %25, i32 %26)
  %28 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %132

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %40 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %47 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %45, %38
  %53 = phi i1 [ true, %38 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %64 = icmp ne %struct.auxtrace_buffer* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %67 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %70 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %71 = call i64 @intel_pt_do_fix_overlap(%struct.TYPE_4__* %68, %struct.auxtrace_buffer* %69, %struct.auxtrace_buffer* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %132

76:                                               ; preds = %65, %62, %57, %52
  %77 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %78 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %86 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %88 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %91 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %103

92:                                               ; preds = %76
  %93 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %97 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %102 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %92, %81
  %104 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %105 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %108 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %8, align 8
  %110 = icmp ne %struct.auxtrace_buffer* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %116 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %114, %103
  %120 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %121 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %7, align 8
  %123 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  %126 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %127 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %131

128:                                              ; preds = %114, %111
  %129 = load %struct.intel_pt_buffer*, %struct.intel_pt_buffer** %9, align 8
  %130 = getelementptr inbounds %struct.intel_pt_buffer, %struct.intel_pt_buffer* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %119
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %73, %34
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i64 @auxtrace_buffer__get_data(%struct.auxtrace_buffer*, i32) #1

declare dso_local i64 @intel_pt_do_fix_overlap(%struct.TYPE_4__*, %struct.auxtrace_buffer*, %struct.auxtrace_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
