; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_update_target.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_update_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_qos_constraints = type { i32, i64, i32 }
%struct.plist_node = type { i32 }

@pm_qos_lock = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_qos_update_target(%struct.pm_qos_constraints* %0, %struct.plist_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pm_qos_constraints*, align 8
  %6 = alloca %struct.plist_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pm_qos_constraints* %0, %struct.pm_qos_constraints** %5, align 8
  store %struct.plist_node* %1, %struct.plist_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @pm_qos_lock, i64 %14)
  %16 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %17 = call i32 @pm_qos_get_value(%struct.pm_qos_constraints* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %23 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %47 [
    i32 129, label %29
    i32 128, label %34
    i32 130, label %39
  ]

29:                                               ; preds = %27
  %30 = load %struct.plist_node*, %struct.plist_node** %6, align 8
  %31 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %32 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %31, i32 0, i32 2
  %33 = call i32 @plist_del(%struct.plist_node* %30, i32* %32)
  br label %48

34:                                               ; preds = %27
  %35 = load %struct.plist_node*, %struct.plist_node** %6, align 8
  %36 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %37 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %36, i32 0, i32 2
  %38 = call i32 @plist_del(%struct.plist_node* %35, i32* %37)
  br label %39

39:                                               ; preds = %27, %34
  %40 = load %struct.plist_node*, %struct.plist_node** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @plist_node_init(%struct.plist_node* %40, i32 %41)
  %43 = load %struct.plist_node*, %struct.plist_node** %6, align 8
  %44 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %45 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %44, i32 0, i32 2
  %46 = call i32 @plist_add(%struct.plist_node* %43, i32* %45)
  br label %48

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %39, %29
  %49 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %50 = call i32 @pm_qos_get_value(%struct.pm_qos_constraints* %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @pm_qos_set_value(%struct.pm_qos_constraints* %51, i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @pm_qos_lock, i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @trace_pm_qos_update_target(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  %64 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %65 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %70 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @blocking_notifier_call_chain(i64 %71, i64 %73, i32* null)
  br label %75

75:                                               ; preds = %68, %63
  br label %77

76:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %13, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm_qos_get_value(%struct.pm_qos_constraints*) #1

declare dso_local i32 @plist_del(%struct.plist_node*, i32*) #1

declare dso_local i32 @plist_node_init(%struct.plist_node*, i32) #1

declare dso_local i32 @plist_add(%struct.plist_node*, i32*) #1

declare dso_local i32 @pm_qos_set_value(%struct.pm_qos_constraints*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_pm_qos_update_target(i32, i32, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
