; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.hist_field*, %struct.hist_field* }
%struct.hist_field = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tracing_map_elt = type { i32 }
%struct.action_data = type { i64, i64 }

@HANDLER_ONMAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"\0A\09max: %10llu\00", align 1
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A\09changed: %10llu\00", align 1
@ACTION_SNAPSHOT = common dso_local global i64 0, align 8
@HIST_FIELD_FL_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"  %s: %-32s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  %s: %10llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_trigger_data*, %struct.tracing_map_elt*, %struct.action_data*)* @track_data_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @track_data_print(%struct.seq_file* %0, %struct.hist_trigger_data* %1, %struct.tracing_map_elt* %2, %struct.action_data* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.tracing_map_elt*, align 8
  %8 = alloca %struct.action_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hist_field*, align 8
  %13 = alloca %struct.hist_field*, align 8
  %14 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %6, align 8
  store %struct.tracing_map_elt* %2, %struct.tracing_map_elt** %7, align 8
  store %struct.action_data* %3, %struct.action_data** %8, align 8
  %15 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %16 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %17 = load %struct.action_data*, %struct.action_data** %8, align 8
  %18 = call i8* @get_track_val(%struct.hist_trigger_data* %15, %struct.tracing_map_elt* %16, %struct.action_data* %17)
  store i8* %18, i8** %9, align 8
  %19 = load %struct.action_data*, %struct.action_data** %8, align 8
  %20 = getelementptr inbounds %struct.action_data, %struct.action_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HANDLER_ONMAX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %39

28:                                               ; preds = %4
  %29 = load %struct.action_data*, %struct.action_data** %8, align 8
  %30 = getelementptr inbounds %struct.action_data, %struct.action_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.action_data*, %struct.action_data** %8, align 8
  %41 = getelementptr inbounds %struct.action_data, %struct.action_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACTION_SNAPSHOT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %111

46:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %108, %46
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %50 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %55 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.hist_field*, %struct.hist_field** %61, align 8
  store %struct.hist_field* %62, %struct.hist_field** %12, align 8
  %63 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %64 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.hist_field*, %struct.hist_field** %70, align 8
  store %struct.hist_field* %71, %struct.hist_field** %13, align 8
  %72 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %73 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @tracing_map_read_var(%struct.tracing_map_elt* %76, i32 %77)
  store i8* %78, i8** %14, align 8
  %79 = load %struct.hist_field*, %struct.hist_field** %12, align 8
  %80 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HIST_FIELD_FL_STRING, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %53
  %86 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %87 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %88 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8*, i8** %14, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %92, i8* %95)
  br label %107

97:                                               ; preds = %53
  %98 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %99 = load %struct.hist_field*, %struct.hist_field** %13, align 8
  %100 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %104, i8* %105)
  br label %107

107:                                              ; preds = %97, %85
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %47

111:                                              ; preds = %45, %47
  ret void
}

declare dso_local i8* @get_track_val(%struct.hist_trigger_data*, %struct.tracing_map_elt*, %struct.action_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i8* @tracing_map_read_var(%struct.tracing_map_elt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
