; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_key_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_key_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i64, i64, i32, %struct.hist_field**, %struct.TYPE_2__* }
%struct.hist_field = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.trace_event_file = type { i32 }

@HIST_FIELDS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_FIELD_FL_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"stacktrace\00", align 1
@HIST_FIELD_FL_STACKTRACE = common dso_local global i64 0, align 8
@HIST_STACKTRACE_DEPTH = common dso_local global i32 0, align 4
@HIST_ERR_INVALID_REF_KEY = common dso_local global i32 0, align 4
@HIST_KEY_SIZE_MAX = common dso_local global i64 0, align 8
@TRACING_MAP_KEYS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, i32, i32, %struct.trace_event_file*, i8*)* @create_key_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_key_field(%struct.hist_trigger_data* %0, i32 %1, i32 %2, %struct.trace_event_file* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.trace_event_file*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.trace_array*, align 8
  %13 = alloca %struct.hist_field*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.trace_event_file* %3, %struct.trace_event_file** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %18 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.trace_array*, %struct.trace_array** %20, align 8
  store %struct.trace_array* %21, %struct.trace_array** %12, align 8
  store %struct.hist_field* null, %struct.hist_field** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @HIST_FIELDS_MAX, align 4
  %24 = icmp uge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %145

31:                                               ; preds = %5
  %32 = load i64, i64* @HIST_FIELD_FL_KEY, align 8
  %33 = load i64, i64* %14, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %14, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load i64, i64* @HIST_FIELD_FL_STACKTRACE, align 8
  %40 = load i64, i64* %14, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* @HIST_STACKTRACE_DEPTH, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %46, i32* null, i64 %47, i32* null)
  store %struct.hist_field* %48, %struct.hist_field** %13, align 8
  br label %79

49:                                               ; preds = %31
  %50 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %51 = load %struct.trace_event_file*, %struct.trace_event_file** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call %struct.hist_field* @parse_expr(%struct.hist_trigger_data* %50, %struct.trace_event_file* %51, i8* %52, i64 %53, i32* null, i32 0)
  store %struct.hist_field* %54, %struct.hist_field** %13, align 8
  %55 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %56 = call i64 @IS_ERR(%struct.hist_field* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %60 = call i32 @PTR_ERR(%struct.hist_field* %59)
  store i32 %60, i32* %16, align 4
  br label %143

61:                                               ; preds = %49
  %62 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %63 = call i64 @field_has_hist_vars(%struct.hist_field* %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.trace_array*, %struct.trace_array** %12, align 8
  %67 = load i32, i32* @HIST_ERR_INVALID_REF_KEY, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @errpos(i8* %68)
  %70 = call i32 @hist_err(%struct.trace_array* %66, i32 %67, i32 %69)
  %71 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %72 = call i32 @destroy_hist_field(%struct.hist_field* %71, i32 0)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  br label %143

75:                                               ; preds = %61
  %76 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %77 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %75, %38
  %80 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %81 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %82 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %81, i32 0, i32 3
  %83 = load %struct.hist_field**, %struct.hist_field*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %83, i64 %85
  store %struct.hist_field* %80, %struct.hist_field** %86, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @ALIGN(i32 %87, i32 4)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %91 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %90, i32 0, i32 3
  %92 = load %struct.hist_field**, %struct.hist_field*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %92, i64 %94
  %96 = load %struct.hist_field*, %struct.hist_field** %95, align 8
  %97 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %96, i32 0, i32 0
  store i32 %89, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %100 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %99, i32 0, i32 3
  %101 = load %struct.hist_field**, %struct.hist_field*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %101, i64 %103
  %105 = load %struct.hist_field*, %struct.hist_field** %104, align 8
  %106 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %105, i32 0, i32 1
  store i32 %98, i32* %106, align 4
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %110 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %114 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @HIST_KEY_SIZE_MAX, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %79
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %16, align 4
  br label %143

121:                                              ; preds = %79
  %122 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %123 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %127 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %131 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TRACING_MAP_KEYS_MAX, align 8
  %134 = icmp sgt i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @WARN_ON(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %121
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %145

141:                                              ; preds = %121
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %141, %118, %65, %58
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %138, %28
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.hist_field* @create_hist_field(%struct.hist_trigger_data*, i32*, i64, i32*) #1

declare dso_local %struct.hist_field* @parse_expr(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @PTR_ERR(%struct.hist_field*) #1

declare dso_local i64 @field_has_hist_vars(%struct.hist_field*, i32) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i32 @destroy_hist_field(%struct.hist_field*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
