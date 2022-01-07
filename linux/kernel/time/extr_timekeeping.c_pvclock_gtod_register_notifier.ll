; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_pvclock_gtod_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_pvclock_gtod_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.timekeeper }
%struct.timekeeper = type { i32 }
%struct.notifier_block = type { i32 }

@tk_core = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@timekeeper_lock = common dso_local global i32 0, align 4
@pvclock_gtod_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvclock_gtod_register_notifier(%struct.notifier_block* %0) #0 {
  %2 = alloca %struct.notifier_block*, align 8
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %2, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tk_core, i32 0, i32 0), %struct.timekeeper** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @raw_spin_lock_irqsave(i32* @timekeeper_lock, i64 %6)
  %8 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %9 = call i32 @raw_notifier_chain_register(i32* @pvclock_gtod_chain, %struct.notifier_block* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %11 = call i32 @update_pvclock_gtod(%struct.timekeeper* %10, i32 1)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @raw_spin_unlock_irqrestore(i32* @timekeeper_lock, i64 %12)
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @update_pvclock_gtod(%struct.timekeeper*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
