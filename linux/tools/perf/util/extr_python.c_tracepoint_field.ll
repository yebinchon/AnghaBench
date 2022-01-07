; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_tracepoint_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_python.c_tracepoint_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyrf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.tep_format_field = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tep_handle* }
%struct.tep_handle = type { i32 }

@TEP_FIELD_IS_ARRAY = common dso_local global i32 0, align 4
@TEP_FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4
@TEP_FIELD_IS_STRING = common dso_local global i32 0, align 4
@TEP_FIELD_IS_POINTER = common dso_local global i32 0, align 4
@TEP_FIELD_IS_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pyrf_event*, %struct.tep_format_field*)* @tracepoint_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tracepoint_field(%struct.pyrf_event* %0, %struct.tep_format_field* %1) #0 {
  %3 = alloca %struct.pyrf_event*, align 8
  %4 = alloca %struct.tep_format_field*, align 8
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pyrf_event* %0, %struct.pyrf_event** %3, align 8
  store %struct.tep_format_field* %1, %struct.tep_format_field** %4, align 8
  %11 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %12 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.tep_handle*, %struct.tep_handle** %14, align 8
  store %struct.tep_handle* %15, %struct.tep_handle** %5, align 8
  %16 = load %struct.pyrf_event*, %struct.pyrf_event** %3, align 8
  %17 = getelementptr inbounds %struct.pyrf_event, %struct.pyrf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %20 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %21 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TEP_FIELD_IS_ARRAY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %2
  %27 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %28 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %31 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %34 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TEP_FIELD_IS_DYNAMIC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %26
  %40 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @tep_read_number(%struct.tep_handle* %40, i8* %44, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = lshr i32 %49, 16
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 65535
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %39, %26
  %54 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %55 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TEP_FIELD_IS_STRING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @is_printable_array(i8* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32* @_PyUnicode_FromString(i8* %72)
  store i32* %73, i32** %7, align 8
  br label %87

74:                                               ; preds = %60, %53
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %10, align 4
  %80 = call i32* @PyByteArray_FromStringAndSize(i8* %78, i32 %79)
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* @TEP_FIELD_IS_STRING, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %84 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %74, %68
  br label %124

88:                                               ; preds = %2
  %89 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %92 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr i8, i8* %90, i64 %94
  %96 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %97 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @tep_read_number(%struct.tep_handle* %89, i8* %95, i32 %98)
  store i64 %99, i64* %8, align 8
  %100 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %101 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TEP_FIELD_IS_POINTER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %88
  %107 = load i64, i64* %8, align 8
  %108 = call i32* @PyLong_FromUnsignedLong(i64 %107)
  store i32* %108, i32** %7, align 8
  br label %123

109:                                              ; preds = %88
  %110 = load %struct.tep_format_field*, %struct.tep_format_field** %4, align 8
  %111 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TEP_FIELD_IS_SIGNED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i64, i64* %8, align 8
  %118 = call i32* @PyLong_FromLong(i64 %117)
  store i32* %118, i32** %7, align 8
  br label %122

119:                                              ; preds = %109
  %120 = load i64, i64* %8, align 8
  %121 = call i32* @PyLong_FromUnsignedLong(i64 %120)
  store i32* %121, i32** %7, align 8
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %106
  br label %124

124:                                              ; preds = %123, %87
  %125 = load i32*, i32** %7, align 8
  ret i32* %125
}

declare dso_local i64 @tep_read_number(%struct.tep_handle*, i8*, i32) #1

declare dso_local i64 @is_printable_array(i8*, i32) #1

declare dso_local i32* @_PyUnicode_FromString(i8*) #1

declare dso_local i32* @PyByteArray_FromStringAndSize(i8*, i32) #1

declare dso_local i32* @PyLong_FromUnsignedLong(i64) #1

declare dso_local i32* @PyLong_FromLong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
