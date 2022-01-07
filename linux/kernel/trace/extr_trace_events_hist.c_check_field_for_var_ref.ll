; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_check_field_for_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_check_field_for_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hist_trigger_data* }
%struct.hist_trigger_data = type { i32 }

@HIST_FIELD_FL_VAR_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_field*, %struct.hist_trigger_data*, i32)* @check_field_for_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @check_field_for_var_ref(%struct.hist_field* %0, %struct.hist_trigger_data* %1, i32 %2) #0 {
  %4 = alloca %struct.hist_field*, align 8
  %5 = alloca %struct.hist_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i32, align 4
  store %struct.hist_field* %0, %struct.hist_field** %5, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %9 = icmp ne %struct.hist_field* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %12 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @HIST_FIELD_FL_VAR_REF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi i1 [ false, %3 ], [ %16, %10 ]
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %23 = icmp ne %struct.hist_field* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %26 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  %33 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %34, align 8
  %36 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %37 = icmp eq %struct.hist_trigger_data* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load %struct.hist_field*, %struct.hist_field** %5, align 8
  store %struct.hist_field* %39, %struct.hist_field** %4, align 8
  br label %41

40:                                               ; preds = %31, %24, %17
  store %struct.hist_field* null, %struct.hist_field** %4, align 8
  br label %41

41:                                               ; preds = %40, %38
  %42 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  ret %struct.hist_field* %42
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
