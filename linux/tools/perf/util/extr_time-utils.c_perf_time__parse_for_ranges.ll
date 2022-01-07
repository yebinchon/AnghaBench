; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_perf_time__parse_for_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_perf_time__parse_for_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_time_interval = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [176 x i8] c"HINT: no first/last sample time found in perf data.\0APlease use latest perf binary to execute 'perf record'\0A(if '--buildid-all' is enabled, please set '--timestamp-boundary').\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid time string\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_time__parse_for_ranges(i8* %0, %struct.perf_session* %1, %struct.perf_time_interval** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_session*, align 8
  %9 = alloca %struct.perf_time_interval**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.perf_time_interval*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.perf_session* %1, %struct.perf_session** %8, align 8
  store %struct.perf_time_interval** %2, %struct.perf_time_interval*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strchr(i8* %17, i8 signext 37)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.perf_time_interval* @perf_time__range_alloc(i8* %21, i32* %14)
  store %struct.perf_time_interval* %22, %struct.perf_time_interval** %13, align 8
  %23 = load %struct.perf_time_interval*, %struct.perf_time_interval** %13, align 8
  %24 = icmp ne %struct.perf_time_interval* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %84

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %33 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %40 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str, i64 0, i64 0))
  br label %80

47:                                               ; preds = %38, %31
  %48 = load %struct.perf_time_interval*, %struct.perf_time_interval** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %52 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %57 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @perf_time__percent_parse_str(%struct.perf_time_interval* %48, i32 %49, i8* %50, i32 %55, i32 %60)
  store i32 %61, i32* %15, align 4
  br label %67

62:                                               ; preds = %28
  %63 = load %struct.perf_time_interval*, %struct.perf_time_interval** %13, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @perf_time__parse_strs(%struct.perf_time_interval* %63, i8* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %62, %47
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.perf_time_interval*, %struct.perf_time_interval** %13, align 8
  %77 = load %struct.perf_time_interval**, %struct.perf_time_interval*** %9, align 8
  store %struct.perf_time_interval* %76, %struct.perf_time_interval** %77, align 8
  store i32 0, i32* %6, align 4
  br label %84

78:                                               ; preds = %70
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %45
  %81 = load %struct.perf_time_interval*, %struct.perf_time_interval** %13, align 8
  %82 = call i32 @free(%struct.perf_time_interval* %81)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %71, %25
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local %struct.perf_time_interval* @perf_time__range_alloc(i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @perf_time__percent_parse_str(%struct.perf_time_interval*, i32, i8*, i32, i32) #1

declare dso_local i32 @perf_time__parse_strs(%struct.perf_time_interval*, i8*, i32) #1

declare dso_local i32 @free(%struct.perf_time_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
