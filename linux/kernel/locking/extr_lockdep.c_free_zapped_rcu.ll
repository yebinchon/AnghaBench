; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_free_zapped_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_free_zapped_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.pending_free*, %struct.rcu_head }
%struct.pending_free = type { i32 }
%struct.rcu_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@delayed_free = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@lockdep_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_head*)* @free_zapped_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_zapped_rcu(%struct.rcu_head* %0) #0 {
  %2 = alloca %struct.rcu_head*, align 8
  %3 = alloca %struct.pending_free*, align 8
  %4 = alloca i64, align 8
  store %struct.rcu_head* %0, %struct.rcu_head** %2, align 8
  %5 = load %struct.rcu_head*, %struct.rcu_head** %2, align 8
  %6 = icmp ne %struct.rcu_head* %5, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @delayed_free, i32 0, i32 3)
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @raw_local_irq_save(i64 %12)
  %14 = call i32 @arch_spin_lock(i32* @lockdep_lock)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.pending_free*, %struct.pending_free** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @delayed_free, i32 0, i32 2), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @delayed_free, i32 0, i32 0), align 8
  %19 = xor i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pending_free, %struct.pending_free* %17, i64 %20
  store %struct.pending_free* %21, %struct.pending_free** %3, align 8
  %22 = load %struct.pending_free*, %struct.pending_free** %3, align 8
  %23 = call i32 @__free_zapped_classes(%struct.pending_free* %22)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @delayed_free, i32 0, i32 1), align 4
  %24 = load %struct.pending_free*, %struct.pending_free** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @delayed_free, i32 0, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @delayed_free, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pending_free, %struct.pending_free* %24, i64 %26
  %28 = call i32 @call_rcu_zapped(%struct.pending_free* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = call i32 @arch_spin_unlock(i32* @lockdep_lock)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @raw_local_irq_restore(i64 %32)
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @__free_zapped_classes(%struct.pending_free*) #1

declare dso_local i32 @call_rcu_zapped(%struct.pending_free*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
