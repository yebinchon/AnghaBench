; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__add_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_queues = type { i32 }
%struct.perf_session = type { i32, i64, i64, i64 }
%struct.auxtrace_buffer = type { i64, i32, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@BUFFER_LIMIT_FOR_32_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_queues*, %struct.perf_session*, i32, %struct.auxtrace_buffer*, %struct.auxtrace_buffer**)* @auxtrace_queues__add_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxtrace_queues__add_buffer(%struct.auxtrace_queues* %0, %struct.perf_session* %1, i32 %2, %struct.auxtrace_buffer* %3, %struct.auxtrace_buffer** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auxtrace_queues*, align 8
  %8 = alloca %struct.perf_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auxtrace_buffer*, align 8
  %11 = alloca %struct.auxtrace_buffer**, align 8
  %12 = alloca i32, align 4
  store %struct.auxtrace_queues* %0, %struct.auxtrace_queues** %7, align 8
  store %struct.perf_session* %1, %struct.perf_session** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.auxtrace_buffer* %3, %struct.auxtrace_buffer** %10, align 8
  store %struct.auxtrace_buffer** %4, %struct.auxtrace_buffer*** %11, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %16 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %17 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @filter_cpu(%struct.perf_session* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %110

22:                                               ; preds = %5
  %23 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %24 = call %struct.auxtrace_buffer* @memdup(%struct.auxtrace_buffer* %23, i32 40)
  store %struct.auxtrace_buffer* %24, %struct.auxtrace_buffer** %10, align 8
  %25 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %26 = icmp ne %struct.auxtrace_buffer* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %110

30:                                               ; preds = %22
  %31 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %32 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %37 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %40 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %44 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %48 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %91

49:                                               ; preds = %30
  %50 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %51 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @perf_data__is_pipe(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %57 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %60 = call i64 @auxtrace_copy_data(i64 %58, %struct.perf_session* %59)
  %61 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %62 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %64 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  br label %106

68:                                               ; preds = %55
  %69 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %70 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  br label %90

71:                                               ; preds = %49
  %72 = load i32, i32* @BITS_PER_LONG, align 4
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %76 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BUFFER_LIMIT_FOR_32_BIT, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %84 = call i32 @auxtrace_queues__split_buffer(%struct.auxtrace_queues* %81, i32 %82, %struct.auxtrace_buffer* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %106

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %74, %71
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %35
  %92 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %95 = call i32 @auxtrace_queues__queue_buffer(%struct.auxtrace_queues* %92, i32 %93, %struct.auxtrace_buffer* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %106

99:                                               ; preds = %91
  %100 = load %struct.auxtrace_buffer**, %struct.auxtrace_buffer*** %11, align 8
  %101 = icmp ne %struct.auxtrace_buffer** %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %104 = load %struct.auxtrace_buffer**, %struct.auxtrace_buffer*** %11, align 8
  store %struct.auxtrace_buffer* %103, %struct.auxtrace_buffer** %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %6, align 4
  br label %110

106:                                              ; preds = %98, %87, %67
  %107 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %10, align 8
  %108 = call i32 @auxtrace_buffer__free(%struct.auxtrace_buffer* %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %105, %27, %21
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i64 @filter_cpu(%struct.perf_session*, i32) #1

declare dso_local %struct.auxtrace_buffer* @memdup(%struct.auxtrace_buffer*, i32) #1

declare dso_local i64 @perf_data__is_pipe(i32) #1

declare dso_local i64 @auxtrace_copy_data(i64, %struct.perf_session*) #1

declare dso_local i32 @auxtrace_queues__split_buffer(%struct.auxtrace_queues*, i32, %struct.auxtrace_buffer*) #1

declare dso_local i32 @auxtrace_queues__queue_buffer(%struct.auxtrace_queues*, i32, %struct.auxtrace_buffer*) #1

declare dso_local i32 @auxtrace_buffer__free(%struct.auxtrace_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
