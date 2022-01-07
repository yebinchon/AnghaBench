; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c_mmu_notifier_put.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c_mmu_notifier_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@srcu = common dso_local global i32 0, align 4
@mmu_notifier_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmu_notifier_put(%struct.mmu_notifier* %0) #0 {
  %2 = alloca %struct.mmu_notifier*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %2, align 8
  %4 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  %5 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %4, i32 0, i32 3
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %3, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  %13 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  %22 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %1
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  %29 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %28, i32 0, i32 1
  %30 = call i32 @hlist_del_init_rcu(i32* %29)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  %37 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %36, i32 0, i32 0
  %38 = load i32, i32* @mmu_notifier_free_rcu, align 4
  %39 = call i32 @call_srcu(i32* @srcu, i32* %37, i32 %38)
  br label %46

40:                                               ; preds = %26
  %41 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %40, %27
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_srcu(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
