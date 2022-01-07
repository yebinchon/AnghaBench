; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_select_comparison_fn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_select_comparison_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRED_FUNC_START = common dso_local global i32 0, align 4
@PRED_FUNC_MAX = common dso_local global i32 0, align 4
@filter_pred_64 = common dso_local global i32* null, align 8
@pred_funcs_s64 = common dso_local global i32** null, align 8
@pred_funcs_u64 = common dso_local global i32** null, align 8
@filter_pred_32 = common dso_local global i32* null, align 8
@pred_funcs_s32 = common dso_local global i32** null, align 8
@pred_funcs_u32 = common dso_local global i32** null, align 8
@filter_pred_16 = common dso_local global i32* null, align 8
@pred_funcs_s16 = common dso_local global i32** null, align 8
@pred_funcs_u16 = common dso_local global i32** null, align 8
@filter_pred_8 = common dso_local global i32* null, align 8
@pred_funcs_s8 = common dso_local global i32** null, align 8
@pred_funcs_u8 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @select_comparison_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @select_comparison_fn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %3, %3
  br label %32

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PRED_FUNC_START, align 4
  %15 = icmp ult i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32* null, i32** %4, align 8
  br label %124

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PRED_FUNC_START, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PRED_FUNC_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %124

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %122 [
    i32 8, label %34
    i32 4, label %56
    i32 2, label %78
    i32 1, label %100
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** @filter_pred_64, align 8
  store i32* %38, i32** %8, align 8
  br label %55

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32**, i32*** @pred_funcs_s64, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %8, align 8
  br label %54

48:                                               ; preds = %39
  %49 = load i32**, i32*** @pred_funcs_u64, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %8, align 8
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %37
  br label %122

56:                                               ; preds = %32
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32*, i32** @filter_pred_32, align 8
  store i32* %60, i32** %8, align 8
  br label %77

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32**, i32*** @pred_funcs_s32, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %8, align 8
  br label %76

70:                                               ; preds = %61
  %71 = load i32**, i32*** @pred_funcs_u32, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %59
  br label %122

78:                                               ; preds = %32
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32*, i32** @filter_pred_16, align 8
  store i32* %82, i32** %8, align 8
  br label %99

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32**, i32*** @pred_funcs_s16, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %8, align 8
  br label %98

92:                                               ; preds = %83
  %93 = load i32**, i32*** @pred_funcs_u16, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %81
  br label %122

100:                                              ; preds = %32
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32*, i32** @filter_pred_8, align 8
  store i32* %104, i32** %8, align 8
  br label %121

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32**, i32*** @pred_funcs_s8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %8, align 8
  br label %120

114:                                              ; preds = %105
  %115 = load i32**, i32*** @pred_funcs_u8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %8, align 8
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %103
  br label %122

122:                                              ; preds = %32, %121, %99, %77, %55
  %123 = load i32*, i32** %8, align 8
  store i32* %123, i32** %4, align 8
  br label %124

124:                                              ; preds = %122, %30, %19
  %125 = load i32*, i32** %4, align 8
  ret i32* %125
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
