; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_field_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_field_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_var = type { %struct.hist_field*, %struct.hist_field* }
%struct.hist_field = type { i32, i32 }
%struct.hist_trigger_data = type { i64 }
%struct.trace_event_file = type { %struct.trace_array* }
%struct.trace_array = type { i32 }

@HIST_FIELD_FL_VAR = common dso_local global i64 0, align 8
@SYNTH_FIELDS_MAX = common dso_local global i64 0, align 8
@HIST_ERR_TOO_MANY_FIELD_VARS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_ERR_FIELD_VAR_PARSE_FAIL = common dso_local global i32 0, align 4
@HIST_ERR_VAR_CREATE_FIND_FAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field_var* (%struct.hist_trigger_data*, %struct.trace_event_file*, i8*)* @create_field_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field_var* @create_field_var(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1, i8* %2) #0 {
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca %struct.trace_event_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca %struct.hist_field*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trace_array*, align 8
  %11 = alloca %struct.field_var*, align 8
  %12 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.hist_field* null, %struct.hist_field** %7, align 8
  store %struct.hist_field* null, %struct.hist_field** %8, align 8
  %13 = load i64, i64* @HIST_FIELD_FL_VAR, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %15 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %14, i32 0, i32 0
  %16 = load %struct.trace_array*, %struct.trace_array** %15, align 8
  store %struct.trace_array* %16, %struct.trace_array** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %18 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SYNTH_FIELDS_MAX, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %24 = load i32, i32* @HIST_ERR_TOO_MANY_FIELD_VARS, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @errpos(i8* %25)
  %27 = call i32 @hist_err(%struct.trace_array* %23, i32 %24, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %91

30:                                               ; preds = %3
  %31 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %32 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call %struct.hist_field* @parse_atom(%struct.hist_trigger_data* %31, %struct.trace_event_file* %32, i8* %33, i64* %9, i32* null)
  store %struct.hist_field* %34, %struct.hist_field** %7, align 8
  %35 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %36 = call i64 @IS_ERR(%struct.hist_field* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %40 = load i32, i32* @HIST_ERR_FIELD_VAR_PARSE_FAIL, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @errpos(i8* %41)
  %43 = call i32 @hist_err(%struct.trace_array* %39, i32 %40, i32 %42)
  %44 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %45 = call i32 @PTR_ERR(%struct.hist_field* %44)
  store i32 %45, i32* %12, align 4
  br label %91

46:                                               ; preds = %30
  %47 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %48 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %51 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %54 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.hist_field* @create_var(%struct.hist_trigger_data* %47, %struct.trace_event_file* %48, i8* %49, i32 %52, i32 %55)
  store %struct.hist_field* %56, %struct.hist_field** %8, align 8
  %57 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %58 = call i64 @IS_ERR(%struct.hist_field* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %62 = load i32, i32* @HIST_ERR_VAR_CREATE_FIND_FAIL, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @errpos(i8* %63)
  %65 = call i32 @hist_err(%struct.trace_array* %61, i32 %62, i32 %64)
  %66 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %67 = call i32 @kfree(%struct.hist_field* %66)
  %68 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %69 = call i32 @PTR_ERR(%struct.hist_field* %68)
  store i32 %69, i32* %12, align 4
  br label %91

70:                                               ; preds = %46
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.field_var* @kzalloc(i32 16, i32 %71)
  store %struct.field_var* %72, %struct.field_var** %11, align 8
  %73 = load %struct.field_var*, %struct.field_var** %11, align 8
  %74 = icmp ne %struct.field_var* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %77 = call i32 @kfree(%struct.hist_field* %76)
  %78 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %79 = call i32 @kfree(%struct.hist_field* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %91

82:                                               ; preds = %70
  %83 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %84 = load %struct.field_var*, %struct.field_var** %11, align 8
  %85 = getelementptr inbounds %struct.field_var, %struct.field_var* %84, i32 0, i32 1
  store %struct.hist_field* %83, %struct.hist_field** %85, align 8
  %86 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %87 = load %struct.field_var*, %struct.field_var** %11, align 8
  %88 = getelementptr inbounds %struct.field_var, %struct.field_var* %87, i32 0, i32 0
  store %struct.hist_field* %86, %struct.hist_field** %88, align 8
  br label %89

89:                                               ; preds = %91, %82
  %90 = load %struct.field_var*, %struct.field_var** %11, align 8
  ret %struct.field_var* %90

91:                                               ; preds = %75, %60, %38, %22
  %92 = load i32, i32* %12, align 4
  %93 = call %struct.field_var* @ERR_PTR(i32 %92)
  store %struct.field_var* %93, %struct.field_var** %11, align 8
  br label %89
}

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local %struct.hist_field* @parse_atom(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @PTR_ERR(%struct.hist_field*) #1

declare dso_local %struct.hist_field* @create_var(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hist_field*) #1

declare dso_local %struct.field_var* @kzalloc(i32, i32) #1

declare dso_local %struct.field_var* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
