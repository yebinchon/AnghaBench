; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_field_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_get_field_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_arg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.tep_event* }
%struct.tep_event = type { %struct.tep_handle* }
%struct.tep_handle = type { i32 }
%struct.tep_record = type { i8* }

@TEP_FIELD_IS_STRING = common dso_local global i32 0, align 4
@TEP_FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4
@TEP_FIELD_IS_POINTER = common dso_local global i32 0, align 4
@TEP_FIELD_IS_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tep_filter_arg*, %struct.tep_record*)* @get_field_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_field_str(%struct.tep_filter_arg* %0, %struct.tep_record* %1) #0 {
  %3 = alloca %struct.tep_filter_arg*, align 8
  %4 = alloca %struct.tep_record*, align 8
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca %struct.tep_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store %struct.tep_filter_arg* %0, %struct.tep_filter_arg** %3, align 8
  store %struct.tep_record* %1, %struct.tep_record** %4, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %12 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TEP_FIELD_IS_STRING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %2
  %21 = load %struct.tep_record*, %struct.tep_record** %4, align 8
  %22 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %25 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %23, i64 %30
  store i8* %31, i8** %8, align 8
  %32 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %33 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %39 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TEP_FIELD_IS_DYNAMIC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %20
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %7, align 8
  %52 = load %struct.tep_record*, %struct.tep_record** %4, align 8
  %53 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = and i64 %55, 65535
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = lshr i64 %58, 16
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %47, %20
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %61
  %70 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %71 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %76 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @memcpy(i8* %73, i8* %74, i32 %80)
  %82 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %83 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %69, %61
  br label %128

87:                                               ; preds = %2
  %88 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %89 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load %struct.tep_event*, %struct.tep_event** %92, align 8
  store %struct.tep_event* %93, %struct.tep_event** %5, align 8
  %94 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %95 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %94, i32 0, i32 0
  %96 = load %struct.tep_handle*, %struct.tep_handle** %95, align 8
  store %struct.tep_handle* %96, %struct.tep_handle** %6, align 8
  %97 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %98 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %99 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load %struct.tep_record*, %struct.tep_record** %4, align 8
  %103 = call i64 @get_value(%struct.tep_event* %97, %struct.TYPE_4__* %101, %struct.tep_record* %102)
  store i64 %103, i64* %7, align 8
  %104 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %3, align 8
  %105 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TEP_FIELD_IS_POINTER, align 4
  %111 = load i32, i32* @TEP_FIELD_IS_LONG, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %87
  %116 = load %struct.tep_handle*, %struct.tep_handle** %6, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i8* @tep_find_function(%struct.tep_handle* %116, i64 %117)
  store i8* %118, i8** %8, align 8
  br label %119

119:                                              ; preds = %115, %87
  %120 = load i8*, i8** %8, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @snprintf(i8* %123, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %124)
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %126, i8** %8, align 8
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %86
  %129 = load i8*, i8** %8, align 8
  ret i8* %129
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @get_value(%struct.tep_event*, %struct.TYPE_4__*, %struct.tep_record*) #1

declare dso_local i8* @tep_find_function(%struct.tep_handle*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
