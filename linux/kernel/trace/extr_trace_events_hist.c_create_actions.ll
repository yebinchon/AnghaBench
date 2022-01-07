; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_actions.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.action_data**, %struct.TYPE_2__* }
%struct.action_data = type { i64 }
%struct.TYPE_2__ = type { i32 }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@HANDLER_ONMAX = common dso_local global i64 0, align 8
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*)* @create_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_actions(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca %struct.hist_trigger_data*, align 8
  %3 = alloca %struct.action_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %60, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %9 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %6
  %15 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %16 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %15, i32 0, i32 0
  %17 = load %struct.action_data**, %struct.action_data*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.action_data*, %struct.action_data** %17, i64 %19
  %21 = load %struct.action_data*, %struct.action_data** %20, align 8
  store %struct.action_data* %21, %struct.action_data** %3, align 8
  %22 = load %struct.action_data*, %struct.action_data** %3, align 8
  %23 = getelementptr inbounds %struct.action_data, %struct.action_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HANDLER_ONMATCH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %14
  %28 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %29 = load %struct.action_data*, %struct.action_data** %3, align 8
  %30 = call i32 @onmatch_create(%struct.hist_trigger_data* %28, %struct.action_data* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %63

34:                                               ; preds = %27
  br label %59

35:                                               ; preds = %14
  %36 = load %struct.action_data*, %struct.action_data** %3, align 8
  %37 = getelementptr inbounds %struct.action_data, %struct.action_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HANDLER_ONMAX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.action_data*, %struct.action_data** %3, align 8
  %43 = getelementptr inbounds %struct.action_data, %struct.action_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41, %35
  %48 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %49 = load %struct.action_data*, %struct.action_data** %3, align 8
  %50 = call i32 @track_data_create(%struct.hist_trigger_data* %48, %struct.action_data* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %6

63:                                               ; preds = %55, %53, %33, %6
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @onmatch_create(%struct.hist_trigger_data*, %struct.action_data*) #1

declare dso_local i32 @track_data_create(%struct.hist_trigger_data*, %struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
