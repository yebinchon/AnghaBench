; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event__output_id_sample.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event__output_id_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32, i32, i32, i32, i32, i32 }

@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*, %struct.perf_sample_data*)* @__perf_event__output_id_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event__output_id_sample(%struct.perf_output_handle* %0, %struct.perf_sample_data* %1) #0 {
  %3 = alloca %struct.perf_output_handle*, align 8
  %4 = alloca %struct.perf_sample_data*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %3, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %4, align 8
  %6 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %7 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %15 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %16 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @perf_output_put(%struct.perf_output_handle* %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %26 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %27 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @perf_output_put(%struct.perf_output_handle* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %37 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %38 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @perf_output_put(%struct.perf_output_handle* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %48 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %49 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @perf_output_put(%struct.perf_output_handle* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %59 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %60 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @perf_output_put(%struct.perf_output_handle* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %70 = load %struct.perf_sample_data*, %struct.perf_sample_data** %4, align 8
  %71 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @perf_output_put(%struct.perf_output_handle* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
