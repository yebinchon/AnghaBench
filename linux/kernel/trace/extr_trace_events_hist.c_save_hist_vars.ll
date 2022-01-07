; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_hist_vars.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_save_hist_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }
%struct.hist_var_data = type { i32, %struct.hist_trigger_data* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*)* @save_hist_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_hist_vars(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hist_trigger_data*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.hist_var_data*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %3, align 8
  %6 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %7 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  store %struct.trace_array* %10, %struct.trace_array** %4, align 8
  %11 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %12 = call %struct.hist_var_data* @find_hist_vars(%struct.hist_trigger_data* %11)
  store %struct.hist_var_data* %12, %struct.hist_var_data** %5, align 8
  %13 = load %struct.hist_var_data*, %struct.hist_var_data** %5, align 8
  %14 = icmp ne %struct.hist_var_data* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %18 = call i64 @tracing_check_open_get_tr(%struct.trace_array* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.hist_var_data* @kzalloc(i32 16, i32 %24)
  store %struct.hist_var_data* %25, %struct.hist_var_data** %5, align 8
  %26 = load %struct.hist_var_data*, %struct.hist_var_data** %5, align 8
  %27 = icmp ne %struct.hist_var_data* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %30 = call i32 @trace_array_put(%struct.trace_array* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %23
  %34 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %35 = load %struct.hist_var_data*, %struct.hist_var_data** %5, align 8
  %36 = getelementptr inbounds %struct.hist_var_data, %struct.hist_var_data* %35, i32 0, i32 1
  store %struct.hist_trigger_data* %34, %struct.hist_trigger_data** %36, align 8
  %37 = load %struct.hist_var_data*, %struct.hist_var_data** %5, align 8
  %38 = getelementptr inbounds %struct.hist_var_data, %struct.hist_var_data* %37, i32 0, i32 0
  %39 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %40 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %39, i32 0, i32 0
  %41 = call i32 @list_add(i32* %38, i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %28, %20, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.hist_var_data* @find_hist_vars(%struct.hist_trigger_data*) #1

declare dso_local i64 @tracing_check_open_get_tr(%struct.trace_array*) #1

declare dso_local %struct.hist_var_data* @kzalloc(i32, i32) #1

declare dso_local i32 @trace_array_put(%struct.trace_array*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
