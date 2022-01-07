; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_var_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_var_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.trace_event_file = type { i32 }

@TRACING_MAP_VALS_MAX = common dso_local global i32 0, align 4
@TRACING_MAP_VARS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_ERR_DUPLICATE_VAR = common dso_local global i32 0, align 4
@HIST_FIELD_FL_VAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, i32, %struct.trace_event_file*, i8*, i8*)* @create_var_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_var_field(%struct.hist_trigger_data* %0, i32 %1, %struct.trace_event_file* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.trace_array*, align 8
  %13 = alloca i64, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.trace_event_file* %2, %struct.trace_event_file** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %15 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.trace_array*, %struct.trace_array** %17, align 8
  store %struct.trace_array* %18, %struct.trace_array** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TRACING_MAP_VALS_MAX, align 4
  %21 = load i32, i32* @TRACING_MAP_VARS_MAX, align 4
  %22 = add i32 %20, %21
  %23 = icmp uge i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %76

30:                                               ; preds = %5
  %31 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %32 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @find_var(%struct.hist_trigger_data* %31, %struct.trace_event_file* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %38 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.trace_array*, %struct.trace_array** %12, align 8
  %43 = load i32, i32* @HIST_ERR_DUPLICATE_VAR, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @errpos(i8* %44)
  %46 = call i32 @hist_err(%struct.trace_array* %42, i32 %43, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %76

49:                                               ; preds = %36, %30
  %50 = load i64, i64* @HIST_FIELD_FL_VAR, align 8
  %51 = load i64, i64* %13, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %13, align 8
  %53 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %54 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %58 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @TRACING_MAP_VARS_MAX, align 4
  %61 = icmp ugt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %76

68:                                               ; preds = %49
  %69 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @__create_val_field(%struct.hist_trigger_data* %69, i32 %70, %struct.trace_event_file* %71, i8* %72, i8* %73, i64 %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %68, %65, %41, %27
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @find_var(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i32 @__create_val_field(%struct.hist_trigger_data*, i32, %struct.trace_event_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
