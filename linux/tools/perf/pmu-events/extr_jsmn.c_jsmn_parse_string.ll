; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jsmn.c_jsmn_parse_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jsmn.c_jsmn_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i32 0, align 4
@JSMN_SUCCESS = common dso_local global i32 0, align 4
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64, i32*, i64)* @jsmn_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsmn_parse_string(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %88, %5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %93

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %14, align 1
  %37 = load i8, i8* %14, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %40, label %62

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32* @jsmn_alloc_token(%struct.TYPE_4__* %41, i32* %42, i64 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %51, i32* %6, align 4
  br label %98

52:                                               ; preds = %40
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @JSMN_STRING, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @jsmn_fill_token(i32* %53, i32 %54, i32 %56, i32 %59)
  %61 = load i32, i32* @JSMN_SUCCESS, align 4
  store i32 %61, i32* %6, align 4
  br label %98

62:                                               ; preds = %29
  %63 = load i8, i8* %14, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 92
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %81 [
    i32 34, label %79
    i32 47, label %79
    i32 92, label %79
    i32 98, label %79
    i32 102, label %79
    i32 114, label %79
    i32 110, label %79
    i32 116, label %79
    i32 117, label %80
  ]

79:                                               ; preds = %66, %66, %66, %66, %66, %66, %66, %66
  br label %86

80:                                               ; preds = %66
  br label %86

81:                                               ; preds = %66
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %85, i32* %6, align 4
  br label %98

86:                                               ; preds = %80, %79
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %22

93:                                               ; preds = %22
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %81, %52, %47
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32* @jsmn_alloc_token(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @jsmn_fill_token(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
