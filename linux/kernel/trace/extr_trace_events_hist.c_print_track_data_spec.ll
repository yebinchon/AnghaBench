; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_track_data_spec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_track_data_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32 }
%struct.action_data = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HANDLER_ONMAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c":onmax(\00", align 1
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c":onchange(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c").%s(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_trigger_data*, %struct.action_data*)* @print_track_data_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_track_data_spec(%struct.seq_file* %0, %struct.hist_trigger_data* %1, %struct.action_data* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.action_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %5, align 8
  store %struct.action_data* %2, %struct.action_data** %6, align 8
  %7 = load %struct.action_data*, %struct.action_data** %6, align 8
  %8 = getelementptr inbounds %struct.action_data, %struct.action_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HANDLER_ONMAX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.action_data*, %struct.action_data** %6, align 8
  %17 = getelementptr inbounds %struct.action_data, %struct.action_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load %struct.action_data*, %struct.action_data** %6, align 8
  %28 = getelementptr inbounds %struct.action_data, %struct.action_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load %struct.action_data*, %struct.action_data** %6, align 8
  %34 = getelementptr inbounds %struct.action_data, %struct.action_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %39 = load %struct.action_data*, %struct.action_data** %6, align 8
  %40 = call i32 @print_action_spec(%struct.seq_file* %37, %struct.hist_trigger_data* %38, %struct.action_data* %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = call i32 @seq_puts(%struct.seq_file* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @print_action_spec(%struct.seq_file*, %struct.hist_trigger_data*, %struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
