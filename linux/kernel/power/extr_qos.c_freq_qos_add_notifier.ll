; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_freq_qos_add_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_freq_qos_add_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_constraints = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freq_qos_add_notifier(%struct.freq_constraints* %0, i32 %1, %struct.notifier_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.freq_constraints*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca i32, align 4
  store %struct.freq_constraints* %0, %struct.freq_constraints** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.notifier_block* %2, %struct.notifier_block** %7, align 8
  %9 = load %struct.freq_constraints*, %struct.freq_constraints** %5, align 8
  %10 = call i64 @IS_ERR_OR_NULL(%struct.freq_constraints* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %14 = icmp ne %struct.notifier_block* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %34 [
    i32 128, label %20
    i32 129, label %27
  ]

20:                                               ; preds = %18
  %21 = load %struct.freq_constraints*, %struct.freq_constraints** %5, align 8
  %22 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %26 = call i32 @blocking_notifier_chain_register(i32 %24, %struct.notifier_block* %25)
  store i32 %26, i32* %8, align 4
  br label %38

27:                                               ; preds = %18
  %28 = load %struct.freq_constraints*, %struct.freq_constraints** %5, align 8
  %29 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %33 = call i32 @blocking_notifier_chain_register(i32 %31, %struct.notifier_block* %32)
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %18
  %35 = call i32 @WARN_ON(i32 1)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %27, %20
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.freq_constraints*) #1

declare dso_local i32 @blocking_notifier_chain_register(i32, %struct.notifier_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
