; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_action_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_action_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, i64, %struct.track_data**, i32, %struct.trace_event_file* }
%struct.track_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trace_event_file = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.action_data = type { i64, i32, i32* }
%struct.field_var = type { %struct.TYPE_2__* }

@ACTION_TRACE = common dso_local global i64 0, align 8
@ACTION_SNAPSHOT = common dso_local global i64 0, align 8
@cond_snapshot_update = common dso_local global i32 0, align 4
@ACTION_SAVE = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@HIST_ERR_TOO_MANY_SAVE_ACTIONS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIST_ERR_FIELD_VAR_CREATE_FAIL = common dso_local global i32 0, align 4
@HIST_FIELD_FL_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, %struct.action_data*)* @action_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_create(%struct.hist_trigger_data* %0, %struct.action_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca %struct.action_data*, align 8
  %6 = alloca %struct.trace_event_file*, align 8
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca %struct.track_data*, align 8
  %9 = alloca %struct.field_var*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store %struct.action_data* %1, %struct.action_data** %5, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 4
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %14, align 8
  store %struct.trace_event_file* %15, %struct.trace_event_file** %6, align 8
  %16 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %17 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %16, i32 0, i32 0
  %18 = load %struct.trace_array*, %struct.trace_array** %17, align 8
  store %struct.trace_array* %18, %struct.trace_array** %7, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.action_data*, %struct.action_data** %5, align 8
  %20 = getelementptr inbounds %struct.action_data, %struct.action_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACTION_TRACE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %26 = load %struct.action_data*, %struct.action_data** %5, align 8
  %27 = call i32 @trace_action_create(%struct.hist_trigger_data* %25, %struct.action_data* %26)
  store i32 %27, i32* %3, align 4
  br label %153

28:                                               ; preds = %2
  %29 = load %struct.action_data*, %struct.action_data** %5, align 8
  %30 = getelementptr inbounds %struct.action_data, %struct.action_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACTION_SNAPSHOT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %36 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.action_data*, %struct.action_data** %5, align 8
  %39 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %40 = call %struct.track_data* @track_data_alloc(i32 %37, %struct.action_data* %38, %struct.hist_trigger_data* %39)
  store %struct.track_data* %40, %struct.track_data** %8, align 8
  %41 = load %struct.track_data*, %struct.track_data** %8, align 8
  %42 = call i64 @IS_ERR(%struct.track_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.track_data*, %struct.track_data** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.track_data* %45)
  store i32 %46, i32* %12, align 4
  br label %151

47:                                               ; preds = %34
  %48 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %49 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %48, i32 0, i32 0
  %50 = load %struct.trace_array*, %struct.trace_array** %49, align 8
  %51 = load %struct.track_data*, %struct.track_data** %8, align 8
  %52 = load i32, i32* @cond_snapshot_update, align 4
  %53 = call i32 @tracing_snapshot_cond_enable(%struct.trace_array* %50, %struct.track_data* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.track_data*, %struct.track_data** %8, align 8
  %58 = call i32 @track_data_free(%struct.track_data* %57)
  br label %59

59:                                               ; preds = %56, %47
  br label %151

60:                                               ; preds = %28
  %61 = load %struct.action_data*, %struct.action_data** %5, align 8
  %62 = getelementptr inbounds %struct.action_data, %struct.action_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACTION_SAVE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %150

66:                                               ; preds = %60
  %67 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %68 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @EEXIST, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %75 = load i32, i32* @HIST_ERR_TOO_MANY_SAVE_ACTIONS, align 4
  %76 = call i32 @hist_err(%struct.trace_array* %74, i32 %75, i32 0)
  br label %151

77:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %146, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.action_data*, %struct.action_data** %5, align 8
  %81 = getelementptr inbounds %struct.action_data, %struct.action_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %149

84:                                               ; preds = %78
  %85 = load %struct.action_data*, %struct.action_data** %5, align 8
  %86 = getelementptr inbounds %struct.action_data, %struct.action_data* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kstrdup(i32 %91, i32 %92)
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %151

99:                                               ; preds = %84
  %100 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call %struct.track_data* @create_target_field_var(%struct.hist_trigger_data* %100, i32* null, i32* null, i8* %101)
  %103 = bitcast %struct.track_data* %102 to %struct.field_var*
  store %struct.field_var* %103, %struct.field_var** %9, align 8
  %104 = load %struct.field_var*, %struct.field_var** %9, align 8
  %105 = bitcast %struct.field_var* %104 to %struct.track_data*
  %106 = call i64 @IS_ERR(%struct.track_data* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %110 = load i32, i32* @HIST_ERR_FIELD_VAR_CREATE_FAIL, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @errpos(i8* %111)
  %113 = call i32 @hist_err(%struct.trace_array* %109, i32 %110, i32 %112)
  %114 = load %struct.field_var*, %struct.field_var** %9, align 8
  %115 = bitcast %struct.field_var* %114 to %struct.track_data*
  %116 = call i32 @PTR_ERR(%struct.track_data* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @kfree(i8* %117)
  br label %151

119:                                              ; preds = %99
  %120 = load %struct.field_var*, %struct.field_var** %9, align 8
  %121 = bitcast %struct.field_var* %120 to %struct.track_data*
  %122 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %123 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %122, i32 0, i32 2
  %124 = load %struct.track_data**, %struct.track_data*** %123, align 8
  %125 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %126 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = getelementptr inbounds %struct.track_data*, %struct.track_data** %124, i64 %127
  store %struct.track_data* %121, %struct.track_data** %129, align 8
  %130 = load %struct.field_var*, %struct.field_var** %9, align 8
  %131 = getelementptr inbounds %struct.field_var, %struct.field_var* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HIST_FIELD_FL_STRING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %119
  %139 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %140 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %138, %119
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @kfree(i8* %144)
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %78

149:                                              ; preds = %78
  br label %150

150:                                              ; preds = %149, %60
  br label %151

151:                                              ; preds = %150, %108, %96, %71, %59, %44
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %24
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @trace_action_create(%struct.hist_trigger_data*, %struct.action_data*) #1

declare dso_local %struct.track_data* @track_data_alloc(i32, %struct.action_data*, %struct.hist_trigger_data*) #1

declare dso_local i64 @IS_ERR(%struct.track_data*) #1

declare dso_local i32 @PTR_ERR(%struct.track_data*) #1

declare dso_local i32 @tracing_snapshot_cond_enable(%struct.trace_array*, %struct.track_data*, i32) #1

declare dso_local i32 @track_data_free(%struct.track_data*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local %struct.track_data* @create_target_field_var(%struct.hist_trigger_data*, i32*, i32*, i8*) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
