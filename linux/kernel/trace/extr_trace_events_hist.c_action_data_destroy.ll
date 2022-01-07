; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_action_data_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_action_data_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_data = type { i32, %struct.action_data*, %struct.TYPE_2__*, %struct.action_data**, %struct.action_data* }
%struct.TYPE_2__ = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.action_data*)* @action_data_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @action_data_destroy(%struct.action_data* %0) #0 {
  %2 = alloca %struct.action_data*, align 8
  %3 = alloca i32, align 4
  store %struct.action_data* %0, %struct.action_data** %2, align 8
  %4 = call i32 @lockdep_assert_held(i32* @event_mutex)
  %5 = load %struct.action_data*, %struct.action_data** %2, align 8
  %6 = getelementptr inbounds %struct.action_data, %struct.action_data* %5, i32 0, i32 4
  %7 = load %struct.action_data*, %struct.action_data** %6, align 8
  %8 = call i32 @kfree(%struct.action_data* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.action_data*, %struct.action_data** %2, align 8
  %12 = getelementptr inbounds %struct.action_data, %struct.action_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.action_data*, %struct.action_data** %2, align 8
  %17 = getelementptr inbounds %struct.action_data, %struct.action_data* %16, i32 0, i32 3
  %18 = load %struct.action_data**, %struct.action_data*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.action_data*, %struct.action_data** %18, i64 %20
  %22 = load %struct.action_data*, %struct.action_data** %21, align 8
  %23 = call i32 @kfree(%struct.action_data* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.action_data*, %struct.action_data** %2, align 8
  %29 = getelementptr inbounds %struct.action_data, %struct.action_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.action_data*, %struct.action_data** %2, align 8
  %34 = getelementptr inbounds %struct.action_data, %struct.action_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.action_data*, %struct.action_data** %2, align 8
  %41 = getelementptr inbounds %struct.action_data, %struct.action_data* %40, i32 0, i32 1
  %42 = load %struct.action_data*, %struct.action_data** %41, align 8
  %43 = call i32 @kfree(%struct.action_data* %42)
  %44 = load %struct.action_data*, %struct.action_data** %2, align 8
  %45 = call i32 @kfree(%struct.action_data* %44)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @kfree(%struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
