; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__get_trace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__get_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { i64, i32, i64, i64, %struct.TYPE_6__*, %struct.auxtrace_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { i32 }
%struct.auxtrace_buffer = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_queue*)* @cs_etm__get_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm__get_trace(%struct.cs_etm_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs_etm_queue*, align 8
  %4 = alloca %struct.auxtrace_buffer*, align 8
  %5 = alloca %struct.auxtrace_buffer*, align 8
  %6 = alloca %struct.auxtrace_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %3, align 8
  %8 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %9 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %8, i32 0, i32 5
  %10 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %9, align 8
  store %struct.auxtrace_buffer* %10, %struct.auxtrace_buffer** %4, align 8
  %11 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  store %struct.auxtrace_buffer* %11, %struct.auxtrace_buffer** %5, align 8
  %12 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %13 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %16, align 8
  %18 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %19 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %17, i64 %20
  store %struct.auxtrace_queue* %21, %struct.auxtrace_queue** %6, align 8
  %22 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %6, align 8
  %23 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %24 = call %struct.auxtrace_buffer* @auxtrace_buffer__next(%struct.auxtrace_queue* %22, %struct.auxtrace_buffer* %23)
  store %struct.auxtrace_buffer* %24, %struct.auxtrace_buffer** %4, align 8
  %25 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %26 = icmp ne %struct.auxtrace_buffer* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %5, align 8
  %29 = icmp ne %struct.auxtrace_buffer* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %5, align 8
  %32 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %35 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %88

36:                                               ; preds = %1
  %37 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %38 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %39 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %38, i32 0, i32 5
  store %struct.auxtrace_buffer* %37, %struct.auxtrace_buffer** %39, align 8
  %40 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %36
  %45 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %46 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @perf_data__fd(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @auxtrace_buffer__get_data(%struct.auxtrace_buffer* %53, i32 %54)
  %56 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %44
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %88

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %5, align 8
  %68 = icmp ne %struct.auxtrace_buffer* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %5, align 8
  %71 = call i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %74 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %79 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.auxtrace_buffer*, %struct.auxtrace_buffer** %4, align 8
  %81 = getelementptr inbounds %struct.auxtrace_buffer, %struct.auxtrace_buffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %84 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %86 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %72, %62, %33
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.auxtrace_buffer* @auxtrace_buffer__next(%struct.auxtrace_queue*, %struct.auxtrace_buffer*) #1

declare dso_local i32 @auxtrace_buffer__drop_data(%struct.auxtrace_buffer*) #1

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i64 @auxtrace_buffer__get_data(%struct.auxtrace_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
