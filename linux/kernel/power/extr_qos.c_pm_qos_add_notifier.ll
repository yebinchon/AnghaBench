; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_add_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_pm_qos_add_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.notifier_block = type { i32 }

@pm_qos_array = common dso_local global %struct.TYPE_4__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_qos_add_notifier(i32 %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pm_qos_array, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 %8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %16 = call i32 @blocking_notifier_chain_register(i32 %14, %struct.notifier_block* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

declare dso_local i32 @blocking_notifier_chain_register(i32, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
