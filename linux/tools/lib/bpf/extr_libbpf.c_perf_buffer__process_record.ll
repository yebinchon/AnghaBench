; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__process_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_header = type { i32 }
%struct.perf_cpu_buf = type { i32, %struct.perf_buffer* }
%struct.perf_buffer = type { i32 (i32, i32, %struct.perf_event_header*)*, i32, i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32)* }
%struct.perf_sample_raw = type { i32, i32 }
%struct.perf_sample_lost = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unknown perf sample type %d\0A\00", align 1
@LIBBPF_PERF_EVENT_ERROR = common dso_local global i32 0, align 4
@LIBBPF_PERF_EVENT_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_header*, i8*)* @perf_buffer__process_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_buffer__process_record(%struct.perf_event_header* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_cpu_buf*, align 8
  %7 = alloca %struct.perf_buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perf_sample_raw*, align 8
  %10 = alloca %struct.perf_sample_lost*, align 8
  store %struct.perf_event_header* %0, %struct.perf_event_header** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.perf_cpu_buf*
  store %struct.perf_cpu_buf* %12, %struct.perf_cpu_buf** %6, align 8
  %13 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %6, align 8
  %14 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %13, i32 0, i32 1
  %15 = load %struct.perf_buffer*, %struct.perf_buffer** %14, align 8
  store %struct.perf_buffer* %15, %struct.perf_buffer** %7, align 8
  %16 = load %struct.perf_event_header*, %struct.perf_event_header** %4, align 8
  %17 = bitcast %struct.perf_event_header* %16 to i8*
  store i8* %17, i8** %8, align 8
  %18 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, %struct.perf_event_header*)*, i32 (i32, i32, %struct.perf_event_header*)** %19, align 8
  %21 = icmp ne i32 (i32, i32, %struct.perf_event_header*)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, %struct.perf_event_header*)*, i32 (i32, i32, %struct.perf_event_header*)** %24, align 8
  %26 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %6, align 8
  %30 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.perf_event_header*, %struct.perf_event_header** %4, align 8
  %33 = call i32 %25(i32 %28, i32 %31, %struct.perf_event_header* %32)
  store i32 %33, i32* %3, align 4
  br label %93

34:                                               ; preds = %2
  %35 = load %struct.perf_event_header*, %struct.perf_event_header** %4, align 8
  %36 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %85 [
    i32 128, label %38
    i32 129, label %63
  ]

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to %struct.perf_sample_raw*
  store %struct.perf_sample_raw* %40, %struct.perf_sample_raw** %9, align 8
  %41 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %41, i32 0, i32 3
  %43 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %42, align 8
  %44 = icmp ne i32 (i32, i32, i32, i32)* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %46, i32 0, i32 3
  %48 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %47, align 8
  %49 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %6, align 8
  %53 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.perf_sample_raw*, %struct.perf_sample_raw** %9, align 8
  %56 = getelementptr inbounds %struct.perf_sample_raw, %struct.perf_sample_raw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.perf_sample_raw*, %struct.perf_sample_raw** %9, align 8
  %59 = getelementptr inbounds %struct.perf_sample_raw, %struct.perf_sample_raw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %48(i32 %51, i32 %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %45, %38
  br label %91

63:                                               ; preds = %34
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to %struct.perf_sample_lost*
  store %struct.perf_sample_lost* %65, %struct.perf_sample_lost** %10, align 8
  %66 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %66, i32 0, i32 2
  %68 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %67, align 8
  %69 = icmp ne i32 (i32, i32, i32)* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %71, i32 0, i32 2
  %73 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %72, align 8
  %74 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %6, align 8
  %78 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.perf_sample_lost*, %struct.perf_sample_lost** %10, align 8
  %81 = getelementptr inbounds %struct.perf_sample_lost, %struct.perf_sample_lost* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %73(i32 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %70, %63
  br label %91

85:                                               ; preds = %34
  %86 = load %struct.perf_event_header*, %struct.perf_event_header** %4, align 8
  %87 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @LIBBPF_PERF_EVENT_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %84, %62
  %92 = load i32, i32* @LIBBPF_PERF_EVENT_CONT, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %85, %22
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
