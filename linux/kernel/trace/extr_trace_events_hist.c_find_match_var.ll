; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_match_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_find_match_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.action_data**, %struct.TYPE_4__* }
%struct.action_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.trace_event_file = type { i32 }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@HIST_ERR_VAR_NOT_UNIQUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, i8*)* @find_match_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @find_match_var(%struct.hist_trigger_data* %0, i8* %1) #0 {
  %3 = alloca %struct.hist_field*, align 8
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca %struct.hist_field*, align 8
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.action_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %15 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.trace_array*, %struct.trace_array** %17, align 8
  store %struct.trace_array* %18, %struct.trace_array** %6, align 8
  store %struct.hist_field* null, %struct.hist_field** %8, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %77, %2
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %22 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %19
  %26 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %27 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %26, i32 0, i32 1
  %28 = load %struct.action_data**, %struct.action_data*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.action_data*, %struct.action_data** %28, i64 %30
  %32 = load %struct.action_data*, %struct.action_data** %31, align 8
  store %struct.action_data* %32, %struct.action_data** %11, align 8
  %33 = load %struct.action_data*, %struct.action_data** %11, align 8
  %34 = getelementptr inbounds %struct.action_data, %struct.action_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HANDLER_ONMATCH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %25
  %39 = load %struct.action_data*, %struct.action_data** %11, align 8
  %40 = getelementptr inbounds %struct.action_data, %struct.action_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load %struct.action_data*, %struct.action_data** %11, align 8
  %44 = getelementptr inbounds %struct.action_data, %struct.action_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %13, align 8
  %47 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call %struct.trace_event_file* @find_var_file(%struct.trace_array* %47, i8* %48, i8* %49, i8* %50)
  store %struct.trace_event_file* %51, %struct.trace_event_file** %9, align 8
  %52 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %53 = icmp ne %struct.trace_event_file* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %38
  br label %77

55:                                               ; preds = %38
  %56 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call %struct.hist_field* @find_file_var(%struct.trace_event_file* %56, i8* %57)
  store %struct.hist_field* %58, %struct.hist_field** %7, align 8
  %59 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %60 = icmp ne %struct.hist_field* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %63 = icmp ne %struct.hist_field* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %66 = load i32, i32* @HIST_ERR_VAR_NOT_UNIQUE, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @errpos(i8* %67)
  %69 = call i32 @hist_err(%struct.trace_array* %65, i32 %66, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.hist_field* @ERR_PTR(i32 %71)
  store %struct.hist_field* %72, %struct.hist_field** %3, align 8
  br label %82

73:                                               ; preds = %61
  %74 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  store %struct.hist_field* %74, %struct.hist_field** %8, align 8
  br label %75

75:                                               ; preds = %73, %55
  br label %76

76:                                               ; preds = %75, %25
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %19

80:                                               ; preds = %19
  %81 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  store %struct.hist_field* %81, %struct.hist_field** %3, align 8
  br label %82

82:                                               ; preds = %80, %64
  %83 = load %struct.hist_field*, %struct.hist_field** %3, align 8
  ret %struct.hist_field* %83
}

declare dso_local %struct.trace_event_file* @find_var_file(%struct.trace_array*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @find_file_var(%struct.trace_event_file*, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local %struct.hist_field* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
