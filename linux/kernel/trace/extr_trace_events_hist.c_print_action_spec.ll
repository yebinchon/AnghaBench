; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_action_spec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_action_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.action_data = type { i64, i32, i32*, i64, i32 }

@ACTION_SAVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@ACTION_TRACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hist_trigger_data*, %struct.action_data*)* @print_action_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_action_spec(%struct.seq_file* %0, %struct.hist_trigger_data* %1, %struct.action_data* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.action_data*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %5, align 8
  store %struct.action_data* %2, %struct.action_data** %6, align 8
  %8 = load %struct.action_data*, %struct.action_data** %6, align 8
  %9 = getelementptr inbounds %struct.action_data, %struct.action_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ACTION_SAVE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %17 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %23 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %37 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub i32 %38, 1
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %14

48:                                               ; preds = %14
  br label %99

49:                                               ; preds = %3
  %50 = load %struct.action_data*, %struct.action_data** %6, align 8
  %51 = getelementptr inbounds %struct.action_data, %struct.action_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ACTION_TRACE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %49
  %56 = load %struct.action_data*, %struct.action_data** %6, align 8
  %57 = getelementptr inbounds %struct.action_data, %struct.action_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load %struct.action_data*, %struct.action_data** %6, align 8
  %63 = getelementptr inbounds %struct.action_data, %struct.action_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.action_data*, %struct.action_data** %6, align 8
  %70 = getelementptr inbounds %struct.action_data, %struct.action_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load %struct.action_data*, %struct.action_data** %6, align 8
  %78 = getelementptr inbounds %struct.action_data, %struct.action_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %73
  %82 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %83 = call i32 @seq_puts(%struct.seq_file* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load %struct.action_data*, %struct.action_data** %6, align 8
  %87 = getelementptr inbounds %struct.action_data, %struct.action_data* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %67

97:                                               ; preds = %67
  br label %98

98:                                               ; preds = %97, %49
  br label %99

99:                                               ; preds = %98, %48
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
