; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__process_group_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_perf_evsel__process_group_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sample_read_value = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i32, i32, i32*)* @perf_evsel__process_group_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__process_group_data(%struct.evsel* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sample_read_value*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.evsel*, align 8
  store %struct.evsel* %0, %struct.evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.evsel*, %struct.evsel** %6, align 8
  %18 = getelementptr inbounds %struct.evsel, %struct.evsel* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %22, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.evsel*, %struct.evsel** %6, align 8
  %27 = getelementptr inbounds %struct.evsel, %struct.evsel* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %103

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32*, i32** %9, align 8
  %55 = bitcast i32* %54 to %struct.sample_read_value*
  store %struct.sample_read_value* %55, %struct.sample_read_value** %11, align 8
  %56 = load %struct.evsel*, %struct.evsel** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.sample_read_value*, %struct.sample_read_value** %11, align 8
  %60 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %59, i64 0
  %61 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @perf_evsel__set_count(%struct.evsel* %56, i32 %57, i32 %58, i32 %62, i32 %63, i32 %64)
  store i32 1, i32* %15, align 4
  br label %66

66:                                               ; preds = %99, %53
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %66
  %71 = load %struct.evsel*, %struct.evsel** %6, align 8
  %72 = getelementptr inbounds %struct.evsel, %struct.evsel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sample_read_value*, %struct.sample_read_value** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %74, i64 %76
  %78 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.evsel* @perf_evlist__id2evsel(i32 %73, i32 %79)
  store %struct.evsel* %80, %struct.evsel** %16, align 8
  %81 = load %struct.evsel*, %struct.evsel** %16, align 8
  %82 = icmp ne %struct.evsel* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %70
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %103

86:                                               ; preds = %70
  %87 = load %struct.evsel*, %struct.evsel** %16, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.sample_read_value*, %struct.sample_read_value** %11, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %90, i64 %92
  %94 = getelementptr inbounds %struct.sample_read_value, %struct.sample_read_value* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @perf_evsel__set_count(%struct.evsel* %87, i32 %88, i32 %89, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %66

102:                                              ; preds = %66
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %83, %32
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @perf_evsel__set_count(%struct.evsel*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.evsel* @perf_evlist__id2evsel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
