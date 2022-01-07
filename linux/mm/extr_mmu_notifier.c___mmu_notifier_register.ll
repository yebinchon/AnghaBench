; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c___mmu_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c___mmu_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.mmu_notifier_mm*, i32 }
%struct.mmu_notifier_mm = type { i32, i32 }

@CONFIG_LOCKDEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__mmu_notifier_invalidate_range_start_map = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mmu_notifier_register(%struct.mmu_notifier* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmu_notifier*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mmu_notifier_mm*, align 8
  %7 = alloca i32, align 4
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store %struct.mmu_notifier_mm* null, %struct.mmu_notifier_mm** %6, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 2
  %10 = call i32 @lockdep_assert_held_write(i32* %9)
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp sle i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @CONFIG_LOCKDEP, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @fs_reclaim_acquire(i32 %21)
  %23 = call i32 @lock_map_acquire(i32* @__mmu_notifier_invalidate_range_start_map)
  %24 = call i32 @lock_map_release(i32* @__mmu_notifier_invalidate_range_start_map)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @fs_reclaim_release(i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = load %struct.mmu_notifier*, %struct.mmu_notifier** %4, align 8
  %30 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %29, i32 0, i32 2
  store %struct.mm_struct* %28, %struct.mm_struct** %30, align 8
  %31 = load %struct.mmu_notifier*, %struct.mmu_notifier** %4, align 8
  %32 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 1
  %35 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %34, align 8
  %36 = icmp ne %struct.mmu_notifier_mm* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mmu_notifier_mm* @kmalloc(i32 8, i32 %38)
  store %struct.mmu_notifier_mm* %39, %struct.mmu_notifier_mm** %6, align 8
  %40 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %6, align 8
  %41 = icmp ne %struct.mmu_notifier_mm* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %98

45:                                               ; preds = %37
  %46 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %6, align 8
  %47 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %46, i32 0, i32 1
  %48 = call i32 @INIT_HLIST_HEAD(i32* %47)
  %49 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %6, align 8
  %50 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %49, i32 0, i32 0
  %51 = call i32 @spin_lock_init(i32* %50)
  br label %52

52:                                               ; preds = %45, %27
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = call i32 @mm_take_all_locks(%struct.mm_struct* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %94

59:                                               ; preds = %52
  %60 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %61 = call i32 @mmgrab(%struct.mm_struct* %60)
  %62 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %6, align 8
  %63 = icmp ne %struct.mmu_notifier_mm* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %6, align 8
  %66 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %67 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %66, i32 0, i32 1
  store %struct.mmu_notifier_mm* %65, %struct.mmu_notifier_mm** %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %70 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %69, i32 0, i32 1
  %71 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %70, align 8
  %72 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %71, i32 0, i32 0
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.mmu_notifier*, %struct.mmu_notifier** %4, align 8
  %75 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %74, i32 0, i32 1
  %76 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %77 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %76, i32 0, i32 1
  %78 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %77, align 8
  %79 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %78, i32 0, i32 1
  %80 = call i32 @hlist_add_head_rcu(i32* %75, i32* %79)
  %81 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %82 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %81, i32 0, i32 1
  %83 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %82, align 8
  %84 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %87 = call i32 @mm_drop_all_locks(%struct.mm_struct* %86)
  %88 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  %90 = call i64 @atomic_read(i32* %89)
  %91 = icmp sle i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  store i32 0, i32* %3, align 4
  br label %98

94:                                               ; preds = %58
  %95 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %6, align 8
  %96 = call i32 @kfree(%struct.mmu_notifier_mm* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %68, %42
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @fs_reclaim_acquire(i32) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @lock_map_release(i32*) #1

declare dso_local i32 @fs_reclaim_release(i32) #1

declare dso_local %struct.mmu_notifier_mm* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mm_take_all_locks(%struct.mm_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mmgrab(%struct.mm_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mm_drop_all_locks(%struct.mm_struct*) #1

declare dso_local i32 @kfree(%struct.mmu_notifier_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
