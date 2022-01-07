; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_entry_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_entry_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.tracing_map_elt = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c" hitcount: %10llu\00", align 1
@HITCOUNT_IDX = common dso_local global i32 0, align 4
@HIST_FIELD_FL_VAR = common dso_local global i32 0, align 4
@HIST_FIELD_FL_EXPR = common dso_local global i32 0, align 4
@HIST_FIELD_FL_HEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  %s: %10llx\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  %s: %10llu\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_trigger_data*, i8*, %struct.tracing_map_elt*)* @hist_trigger_entry_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_trigger_entry_print(%struct.seq_file* %0, %struct.hist_trigger_data* %1, i8* %2, %struct.tracing_map_elt* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tracing_map_elt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.tracing_map_elt* %3, %struct.tracing_map_elt** %8, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %8, align 8
  %15 = call i32 @hist_trigger_print_key(%struct.seq_file* %11, %struct.hist_trigger_data* %12, i8* %13, %struct.tracing_map_elt* %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %17 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %8, align 8
  %18 = load i32, i32* @HITCOUNT_IDX, align 4
  %19 = call i32 @tracing_map_read_sum(%struct.tracing_map_elt* %17, i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %92, %4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %26 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %23
  %30 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %31 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i8* @hist_field_name(%struct.TYPE_2__* %36, i32 0)
  store i8* %37, i8** %9, align 8
  %38 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %39 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HIST_FIELD_FL_VAR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %29
  %51 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %52 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HIST_FIELD_FL_EXPR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50, %29
  br label %92

64:                                               ; preds = %50
  %65 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %66 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HIST_FIELD_FL_HEX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %64
  %78 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @tracing_map_read_sum(%struct.tracing_map_elt* %80, i32 %81)
  %83 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %82)
  br label %91

84:                                               ; preds = %64
  %85 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @tracing_map_read_sum(%struct.tracing_map_elt* %87, i32 %88)
  %90 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %63
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %23

95:                                               ; preds = %23
  %96 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %97 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %98 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %8, align 8
  %99 = call i32 @print_actions(%struct.seq_file* %96, %struct.hist_trigger_data* %97, %struct.tracing_map_elt* %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %101 = call i32 @seq_puts(%struct.seq_file* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hist_trigger_print_key(%struct.seq_file*, %struct.hist_trigger_data*, i8*, %struct.tracing_map_elt*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @tracing_map_read_sum(%struct.tracing_map_elt*, i32) #1

declare dso_local i8* @hist_field_name(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @print_actions(%struct.seq_file*, %struct.hist_trigger_data*, %struct.tracing_map_elt*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
