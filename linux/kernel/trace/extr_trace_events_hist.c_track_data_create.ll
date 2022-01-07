; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.trace_event_file* }
%struct.trace_event_file = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.action_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.hist_field*, %struct.hist_field* }
%struct.hist_field = type { i32 }

@HIST_ERR_ONX_NOT_VAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_ERR_ONX_VAR_NOT_FOUND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HANDLER_ONMAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"__max\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@HIST_ERR_ONX_VAR_CREATE_FAIL = common dso_local global i32 0, align 4
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"__change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, %struct.action_data*)* @track_data_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @track_data_create(%struct.hist_trigger_data* %0, %struct.action_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca %struct.action_data*, align 8
  %6 = alloca %struct.hist_field*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca %struct.hist_field*, align 8
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca %struct.trace_array*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store %struct.action_data* %1, %struct.action_data** %5, align 8
  store %struct.hist_field* null, %struct.hist_field** %8, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 0
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %14, align 8
  store %struct.trace_event_file* %15, %struct.trace_event_file** %9, align 8
  %16 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %17 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %16, i32 0, i32 0
  %18 = load %struct.trace_array*, %struct.trace_array** %17, align 8
  store %struct.trace_array* %18, %struct.trace_array** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.action_data*, %struct.action_data** %5, align 8
  %20 = getelementptr inbounds %struct.action_data, %struct.action_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 36
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %30 = load i32, i32* @HIST_ERR_ONX_NOT_VAR, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @errpos(i8* %31)
  %33 = call i32 @hist_err(%struct.trace_array* %29, i32 %30, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %115

36:                                               ; preds = %2
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  %39 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call %struct.hist_field* @find_target_event_var(%struct.hist_trigger_data* %39, i32* null, i32* null, i8* %40)
  store %struct.hist_field* %41, %struct.hist_field** %6, align 8
  %42 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %43 = icmp ne %struct.hist_field* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %46 = load i32, i32* @HIST_ERR_ONX_VAR_NOT_FOUND, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @errpos(i8* %47)
  %49 = call i32 @hist_err(%struct.trace_array* %45, i32 %46, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %115

52:                                               ; preds = %36
  %53 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %54 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %55 = call %struct.hist_field* @create_var_ref(%struct.hist_trigger_data* %53, %struct.hist_field* %54, i32* null, i32* null)
  store %struct.hist_field* %55, %struct.hist_field** %7, align 8
  %56 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %57 = icmp ne %struct.hist_field* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %115

61:                                               ; preds = %52
  %62 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %63 = load %struct.action_data*, %struct.action_data** %5, align 8
  %64 = getelementptr inbounds %struct.action_data, %struct.action_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store %struct.hist_field* %62, %struct.hist_field** %65, align 8
  %66 = load %struct.action_data*, %struct.action_data** %5, align 8
  %67 = getelementptr inbounds %struct.action_data, %struct.action_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HANDLER_ONMAX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %73 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %74 = call %struct.hist_field* @create_var(%struct.hist_trigger_data* %72, %struct.trace_event_file* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hist_field* %74, %struct.hist_field** %8, align 8
  br label %75

75:                                               ; preds = %71, %61
  %76 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %77 = call i64 @IS_ERR(%struct.hist_field* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %81 = load i32, i32* @HIST_ERR_ONX_VAR_CREATE_FAIL, align 4
  %82 = call i32 @hist_err(%struct.trace_array* %80, i32 %81, i32 0)
  %83 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %84 = call i32 @PTR_ERR(%struct.hist_field* %83)
  store i32 %84, i32* %12, align 4
  br label %113

85:                                               ; preds = %75
  %86 = load %struct.action_data*, %struct.action_data** %5, align 8
  %87 = getelementptr inbounds %struct.action_data, %struct.action_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %93 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %94 = call %struct.hist_field* @create_var(%struct.hist_trigger_data* %92, %struct.trace_event_file* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hist_field* %94, %struct.hist_field** %8, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %97 = call i64 @IS_ERR(%struct.hist_field* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %101 = load i32, i32* @HIST_ERR_ONX_VAR_CREATE_FAIL, align 4
  %102 = call i32 @hist_err(%struct.trace_array* %100, i32 %101, i32 0)
  %103 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %104 = call i32 @PTR_ERR(%struct.hist_field* %103)
  store i32 %104, i32* %12, align 4
  br label %113

105:                                              ; preds = %95
  %106 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %107 = load %struct.action_data*, %struct.action_data** %5, align 8
  %108 = getelementptr inbounds %struct.action_data, %struct.action_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store %struct.hist_field* %106, %struct.hist_field** %109, align 8
  %110 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %111 = load %struct.action_data*, %struct.action_data** %5, align 8
  %112 = call i32 @action_create(%struct.hist_trigger_data* %110, %struct.action_data* %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %105, %99, %79
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %58, %44, %28
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local %struct.hist_field* @find_target_event_var(%struct.hist_trigger_data*, i32*, i32*, i8*) #1

declare dso_local %struct.hist_field* @create_var_ref(%struct.hist_trigger_data*, %struct.hist_field*, i32*, i32*) #1

declare dso_local %struct.hist_field* @create_var(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @PTR_ERR(%struct.hist_field*) #1

declare dso_local i32 @action_create(%struct.hist_trigger_data*, %struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
