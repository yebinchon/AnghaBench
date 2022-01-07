; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_field_numeric_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_field_numeric_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_format_field = type { i32, i32, i32, i32 }

@TEP_FIELD_IS_ARRAY = common dso_local global i32 0, align 4
@TEP_FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tep_event*, %struct.tep_format_field*, i8*)* @get_field_numeric_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_field_numeric_entry(%struct.tep_event* %0, %struct.tep_format_field* %1, i8* %2) #0 {
  %4 = alloca %struct.tep_event*, align 8
  %5 = alloca %struct.tep_format_field*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tep_event* %0, %struct.tep_event** %4, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %15 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TEP_FIELD_IS_ARRAY, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %23 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @PyList_New(i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %27 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %30 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = udiv i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %34 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %38 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %21
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %101, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %41
  %46 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %49 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %47, i64 %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @read_size(%struct.tep_event* %46, i8* %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %61 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TEP_FIELD_IS_SIGNED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %45
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @LONG_MIN, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @LONG_MAX, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i64, i64* %10, align 8
  %76 = call i32* @_PyLong_FromLong(i64 %75)
  store i32* %76, i32** %8, align 8
  br label %80

77:                                               ; preds = %70, %66
  %78 = load i64, i64* %10, align 8
  %79 = call i32* @PyLong_FromLongLong(i64 %78)
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %77, %74
  br label %92

81:                                               ; preds = %45
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @LONG_MAX, align 8
  %84 = icmp ule i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, i64* %10, align 8
  %87 = call i32* @_PyLong_FromLong(i64 %86)
  store i32* %87, i32** %8, align 8
  br label %91

88:                                               ; preds = %81
  %89 = load i64, i64* %10, align 8
  %90 = call i32* @PyLong_FromUnsignedLongLong(i64 %89)
  store i32* %90, i32** %8, align 8
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %80
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @PyList_SET_ITEM(i32* %96, i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %41

104:                                              ; preds = %41
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %9, align 8
  store i32* %108, i32** %8, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32*, i32** %8, align 8
  ret i32* %110
}

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i64 @read_size(%struct.tep_event*, i8*, i32) #1

declare dso_local i32* @_PyLong_FromLong(i64) #1

declare dso_local i32* @PyLong_FromLongLong(i64) #1

declare dso_local i32* @PyLong_FromUnsignedLongLong(i64) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
