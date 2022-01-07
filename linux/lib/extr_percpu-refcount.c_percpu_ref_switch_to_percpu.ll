; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_percpu-refcount.c_percpu_ref_switch_to_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_percpu-refcount.c_percpu_ref_switch_to_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_ref = type { i32 }

@percpu_ref_switch_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @percpu_ref_switch_to_percpu(%struct.percpu_ref* %0) #0 {
  %2 = alloca %struct.percpu_ref*, align 8
  %3 = alloca i64, align 8
  store %struct.percpu_ref* %0, %struct.percpu_ref** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @percpu_ref_switch_lock, i64 %4)
  %6 = load %struct.percpu_ref*, %struct.percpu_ref** %2, align 8
  %7 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.percpu_ref*, %struct.percpu_ref** %2, align 8
  %9 = call i32 @__percpu_ref_switch_mode(%struct.percpu_ref* %8, i32* null)
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_unlock_irqrestore(i32* @percpu_ref_switch_lock, i64 %10)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__percpu_ref_switch_mode(%struct.percpu_ref*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
