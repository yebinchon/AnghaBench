; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c_mmu_notifier_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c_mmu_notifier_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mmu_notifier*, %struct.mm_struct*)* }
%struct.mm_struct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@srcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmu_notifier_unregister(%struct.mmu_notifier* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mmu_notifier*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i32 0, i32 0
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp sle i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %13 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %12, i32 0, i32 0
  %14 = call i32 @hlist_unhashed(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %2
  %17 = call i32 @srcu_read_lock(i32* @srcu)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %19 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.mmu_notifier*, %struct.mm_struct*)*, i32 (%struct.mmu_notifier*, %struct.mm_struct*)** %21, align 8
  %23 = icmp ne i32 (%struct.mmu_notifier*, %struct.mm_struct*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %26 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.mmu_notifier*, %struct.mm_struct*)*, i32 (%struct.mmu_notifier*, %struct.mm_struct*)** %28, align 8
  %30 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %32 = call i32 %29(%struct.mmu_notifier* %30, %struct.mm_struct* %31)
  br label %33

33:                                               ; preds = %24, %16
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @srcu_read_unlock(i32* @srcu, i32 %34)
  %36 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %42 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %41, i32 0, i32 0
  %43 = call i32 @hlist_del_init_rcu(i32* %42)
  %44 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %33, %2
  %50 = call i32 @synchronize_srcu(i32* @srcu)
  %51 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 0
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp sle i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %58 = call i32 @mmdrop(%struct.mm_struct* %57)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
