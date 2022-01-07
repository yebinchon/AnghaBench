; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_event_enable_trigger_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_trigger.c_event_enable_trigger_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.event_trigger_ops = type { i32 }
%struct.event_trigger_data = type { i32, i32, %struct.enable_trigger_data* }
%struct.enable_trigger_data = type { %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@ENABLE_HIST_STR = common dso_local global i32 0, align 4
@DISABLE_HIST_STR = common dso_local global i32 0, align 4
@ENABLE_EVENT_STR = common dso_local global i32 0, align 4
@DISABLE_EVENT_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c":unlimited\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c":count=%ld\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" if %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_enable_trigger_print(%struct.seq_file* %0, %struct.event_trigger_ops* %1, %struct.event_trigger_data* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.event_trigger_ops*, align 8
  %6 = alloca %struct.event_trigger_data*, align 8
  %7 = alloca %struct.enable_trigger_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.event_trigger_ops* %1, %struct.event_trigger_ops** %5, align 8
  store %struct.event_trigger_data* %2, %struct.event_trigger_data** %6, align 8
  %8 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %9 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %8, i32 0, i32 2
  %10 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %9, align 8
  store %struct.enable_trigger_data* %10, %struct.enable_trigger_data** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %13 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %18 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENABLE_HIST_STR, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @DISABLE_HIST_STR, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %29 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ENABLE_EVENT_STR, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @DISABLE_EVENT_STR, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i32 [ %26, %25 ], [ %37, %36 ]
  %40 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %41 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.enable_trigger_data*, %struct.enable_trigger_data** %7, align 8
  %50 = getelementptr inbounds %struct.enable_trigger_data, %struct.enable_trigger_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = call i32 @trace_event_name(%struct.TYPE_6__* %53)
  %55 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %48, i32 %54)
  %56 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %57 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = call i32 @seq_puts(%struct.seq_file* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %69

63:                                               ; preds = %38
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %66 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %71 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = load %struct.event_trigger_data*, %struct.event_trigger_data** %6, align 8
  %77 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %83

80:                                               ; preds = %69
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 @seq_putc(%struct.seq_file* %81, i8 signext 10)
  br label %83

83:                                               ; preds = %80, %74
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @trace_event_name(%struct.TYPE_6__*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
