; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_freq_qos_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_freq_qos_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_constraints = type { i32, i32 }

@FREQ_QOS_MIN_DEFAULT_VALUE = common dso_local global i32 0, align 4
@FREQ_QOS_MAX_DEFAULT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freq_qos_read_value(%struct.freq_constraints* %0, i32 %1) #0 {
  %3 = alloca %struct.freq_constraints*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.freq_constraints* %0, %struct.freq_constraints** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %31 [
    i32 128, label %7
    i32 129, label %19
  ]

7:                                                ; preds = %2
  %8 = load %struct.freq_constraints*, %struct.freq_constraints** %3, align 8
  %9 = call i32 @IS_ERR_OR_NULL(%struct.freq_constraints* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @FREQ_QOS_MIN_DEFAULT_VALUE, align 4
  br label %17

13:                                               ; preds = %7
  %14 = load %struct.freq_constraints*, %struct.freq_constraints** %3, align 8
  %15 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %14, i32 0, i32 1
  %16 = call i32 @pm_qos_read_value(i32* %15)
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  store i32 %18, i32* %5, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.freq_constraints*, %struct.freq_constraints** %3, align 8
  %21 = call i32 @IS_ERR_OR_NULL(%struct.freq_constraints* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FREQ_QOS_MAX_DEFAULT_VALUE, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.freq_constraints*, %struct.freq_constraints** %3, align 8
  %27 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %26, i32 0, i32 0
  %28 = call i32 @pm_qos_read_value(i32* %27)
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ]
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %2
  %32 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.freq_constraints*) #1

declare dso_local i32 @pm_qos_read_value(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
