; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_track_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.track_data = type { %struct.track_data*, %struct.TYPE_2__, %struct.track_data* }
%struct.TYPE_2__ = type { %struct.track_data* }
%struct.hist_elt_data = type { %struct.hist_elt_data*, %struct.TYPE_2__, %struct.hist_elt_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.track_data*)* @track_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @track_data_free(%struct.track_data* %0) #0 {
  %2 = alloca %struct.track_data*, align 8
  %3 = alloca %struct.hist_elt_data*, align 8
  store %struct.track_data* %0, %struct.track_data** %2, align 8
  %4 = load %struct.track_data*, %struct.track_data** %2, align 8
  %5 = icmp ne %struct.track_data* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  %8 = load %struct.track_data*, %struct.track_data** %2, align 8
  %9 = getelementptr inbounds %struct.track_data, %struct.track_data* %8, i32 0, i32 2
  %10 = load %struct.track_data*, %struct.track_data** %9, align 8
  %11 = call i32 @kfree(%struct.track_data* %10)
  %12 = load %struct.track_data*, %struct.track_data** %2, align 8
  %13 = getelementptr inbounds %struct.track_data, %struct.track_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.track_data*, %struct.track_data** %14, align 8
  %16 = bitcast %struct.track_data* %15 to %struct.hist_elt_data*
  store %struct.hist_elt_data* %16, %struct.hist_elt_data** %3, align 8
  %17 = load %struct.hist_elt_data*, %struct.hist_elt_data** %3, align 8
  %18 = icmp ne %struct.hist_elt_data* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %7
  %20 = load %struct.hist_elt_data*, %struct.hist_elt_data** %3, align 8
  %21 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %20, i32 0, i32 0
  %22 = load %struct.hist_elt_data*, %struct.hist_elt_data** %21, align 8
  %23 = bitcast %struct.hist_elt_data* %22 to %struct.track_data*
  %24 = call i32 @kfree(%struct.track_data* %23)
  %25 = load %struct.hist_elt_data*, %struct.hist_elt_data** %3, align 8
  %26 = bitcast %struct.hist_elt_data* %25 to %struct.track_data*
  %27 = call i32 @kfree(%struct.track_data* %26)
  br label %28

28:                                               ; preds = %19, %7
  %29 = load %struct.track_data*, %struct.track_data** %2, align 8
  %30 = call i32 @kfree(%struct.track_data* %29)
  br label %31

31:                                               ; preds = %28, %6
  ret void
}

declare dso_local i32 @kfree(%struct.track_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
