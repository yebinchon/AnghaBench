; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.track_data = type { i32, %struct.TYPE_2__, %struct.hist_trigger_data*, %struct.action_data*, i8* }
%struct.TYPE_2__ = type { %struct.hist_elt_data* }
%struct.hist_elt_data = type { i8* }
%struct.action_data = type { i32 }
%struct.hist_trigger_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.track_data* (i32, %struct.action_data*, %struct.hist_trigger_data*)* @track_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.track_data* @track_data_alloc(i32 %0, %struct.action_data* %1, %struct.hist_trigger_data* %2) #0 {
  %4 = alloca %struct.track_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.action_data*, align 8
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca %struct.track_data*, align 8
  %9 = alloca %struct.hist_elt_data*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.action_data* %1, %struct.action_data** %6, align 8
  store %struct.hist_trigger_data* %2, %struct.hist_trigger_data** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 40, i32 %10)
  %12 = bitcast i8* %11 to %struct.track_data*
  store %struct.track_data* %12, %struct.track_data** %8, align 8
  %13 = load %struct.track_data*, %struct.track_data** %8, align 8
  %14 = icmp ne %struct.track_data* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.track_data* @ERR_PTR(i32 %17)
  store %struct.track_data* %18, %struct.track_data** %4, align 8
  br label %78

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.track_data*, %struct.track_data** %8, align 8
  %24 = getelementptr inbounds %struct.track_data, %struct.track_data* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.track_data*, %struct.track_data** %8, align 8
  %26 = getelementptr inbounds %struct.track_data, %struct.track_data* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load %struct.track_data*, %struct.track_data** %8, align 8
  %31 = call i32 @track_data_free(%struct.track_data* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.track_data* @ERR_PTR(i32 %33)
  store %struct.track_data* %34, %struct.track_data** %4, align 8
  br label %78

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.track_data*, %struct.track_data** %8, align 8
  %38 = getelementptr inbounds %struct.track_data, %struct.track_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.action_data*, %struct.action_data** %6, align 8
  %40 = load %struct.track_data*, %struct.track_data** %8, align 8
  %41 = getelementptr inbounds %struct.track_data, %struct.track_data* %40, i32 0, i32 3
  store %struct.action_data* %39, %struct.action_data** %41, align 8
  %42 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %43 = load %struct.track_data*, %struct.track_data** %8, align 8
  %44 = getelementptr inbounds %struct.track_data, %struct.track_data* %43, i32 0, i32 2
  store %struct.hist_trigger_data* %42, %struct.hist_trigger_data** %44, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 8, i32 %45)
  %47 = bitcast i8* %46 to %struct.hist_elt_data*
  store %struct.hist_elt_data* %47, %struct.hist_elt_data** %9, align 8
  %48 = load %struct.hist_elt_data*, %struct.hist_elt_data** %9, align 8
  %49 = icmp ne %struct.hist_elt_data* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %35
  %51 = load %struct.track_data*, %struct.track_data** %8, align 8
  %52 = call i32 @track_data_free(%struct.track_data* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.track_data* @ERR_PTR(i32 %54)
  store %struct.track_data* %55, %struct.track_data** %4, align 8
  br label %78

56:                                               ; preds = %35
  %57 = load %struct.hist_elt_data*, %struct.hist_elt_data** %9, align 8
  %58 = load %struct.track_data*, %struct.track_data** %8, align 8
  %59 = getelementptr inbounds %struct.track_data, %struct.track_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.hist_elt_data* %57, %struct.hist_elt_data** %60, align 8
  %61 = load i32, i32* @TASK_COMM_LEN, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i32 %61, i32 %62)
  %64 = load %struct.hist_elt_data*, %struct.hist_elt_data** %9, align 8
  %65 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hist_elt_data*, %struct.hist_elt_data** %9, align 8
  %67 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %56
  %71 = load %struct.track_data*, %struct.track_data** %8, align 8
  %72 = call i32 @track_data_free(%struct.track_data* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.track_data* @ERR_PTR(i32 %74)
  store %struct.track_data* %75, %struct.track_data** %4, align 8
  br label %78

76:                                               ; preds = %56
  %77 = load %struct.track_data*, %struct.track_data** %8, align 8
  store %struct.track_data* %77, %struct.track_data** %4, align 8
  br label %78

78:                                               ; preds = %76, %70, %50, %29, %15
  %79 = load %struct.track_data*, %struct.track_data** %4, align 8
  ret %struct.track_data* %79
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.track_data* @ERR_PTR(i32) #1

declare dso_local i32 @track_data_free(%struct.track_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
