; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_evsel-roundtrip-name.c_perf_evsel__roundtrip_cache_name_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_evsel-roundtrip-name.c_perf_evsel__roundtrip_cache_name_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.evlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s != %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @perf_evsel__roundtrip_cache_name_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__roundtrip_cache_name_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.evlist*, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = call %struct.evlist* (...) @evlist__new()
  store %struct.evlist* %11, %struct.evlist** %10, align 8
  %12 = load %struct.evlist*, %struct.evlist** %10, align 8
  %13 = icmp eq %struct.evlist* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %129

17:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @perf_evsel__is_cache_op_valid(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %56

33:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %43 = call i32 @__perf_evsel__hw_cache_type_op_res_name(i32 %39, i32 %40, i32 %41, i8* %42, i32 128)
  %44 = load %struct.evlist*, %struct.evlist** %10, align 8
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %46 = call i32 @parse_events(%struct.evlist* %44, i8* %45, i32* null)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %34

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %23

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %18

63:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  %64 = load %struct.evlist*, %struct.evlist** %10, align 8
  %65 = call %struct.evsel* @evlist__first(%struct.evlist* %64)
  store %struct.evsel* %65, %struct.evsel** %9, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %122, %63
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %125

70:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %118, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @perf_evsel__is_cache_op_valid(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %118

81:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %114, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %91 = call i32 @__perf_evsel__hw_cache_type_op_res_name(i32 %87, i32 %88, i32 %89, i8* %90, i32 128)
  %92 = load %struct.evsel*, %struct.evsel** %9, align 8
  %93 = getelementptr inbounds %struct.evsel, %struct.evsel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %114

98:                                               ; preds = %86
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load %struct.evsel*, %struct.evsel** %9, align 8
  %102 = call i32 @perf_evsel__name(%struct.evsel* %101)
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %104 = call i64 @strcmp(i32 %102, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.evsel*, %struct.evsel** %9, align 8
  %108 = call i32 @perf_evsel__name(%struct.evsel* %107)
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %108, i8* %109)
  store i32 -1, i32* %6, align 4
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.evsel*, %struct.evsel** %9, align 8
  %113 = call %struct.evsel* @perf_evsel__next(%struct.evsel* %112)
  store %struct.evsel* %113, %struct.evsel** %9, align 8
  br label %114

114:                                              ; preds = %111, %97
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %82

117:                                              ; preds = %82
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %71

121:                                              ; preds = %71
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %66

125:                                              ; preds = %66
  %126 = load %struct.evlist*, %struct.evlist** %10, align 8
  %127 = call i32 @evlist__delete(%struct.evlist* %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %1, align 4
  br label %129

129:                                              ; preds = %125, %14
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local %struct.evlist* @evlist__new(...) #1

declare dso_local i32 @perf_evsel__is_cache_op_valid(i32, i32) #1

declare dso_local i32 @__perf_evsel__hw_cache_type_op_res_name(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @parse_events(%struct.evlist*, i8*, i32*) #1

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @perf_evsel__name(%struct.evsel*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local %struct.evsel* @perf_evsel__next(%struct.evsel*) #1

declare dso_local i32 @evlist__delete(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
