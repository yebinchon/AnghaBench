; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_alloc_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_alloc_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32 }
%struct.hmm = type { %struct.mmu_notifier, i64, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmu_notifier* (%struct.mm_struct*)* @hmm_alloc_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmu_notifier* @hmm_alloc_notifier(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mmu_notifier*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.hmm*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hmm* @kzalloc(i32 40, i32 %5)
  store %struct.hmm* %6, %struct.hmm** %4, align 8
  %7 = load %struct.hmm*, %struct.hmm** %4, align 8
  %8 = icmp ne %struct.hmm* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.mmu_notifier* @ERR_PTR(i32 %11)
  store %struct.mmu_notifier* %12, %struct.mmu_notifier** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.hmm*, %struct.hmm** %4, align 8
  %15 = getelementptr inbounds %struct.hmm, %struct.hmm* %14, i32 0, i32 6
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.hmm*, %struct.hmm** %4, align 8
  %18 = getelementptr inbounds %struct.hmm, %struct.hmm* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.hmm*, %struct.hmm** %4, align 8
  %21 = getelementptr inbounds %struct.hmm, %struct.hmm* %20, i32 0, i32 4
  %22 = call i32 @init_rwsem(i32* %21)
  %23 = load %struct.hmm*, %struct.hmm** %4, align 8
  %24 = getelementptr inbounds %struct.hmm, %struct.hmm* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.hmm*, %struct.hmm** %4, align 8
  %27 = getelementptr inbounds %struct.hmm, %struct.hmm* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.hmm*, %struct.hmm** %4, align 8
  %30 = getelementptr inbounds %struct.hmm, %struct.hmm* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.hmm*, %struct.hmm** %4, align 8
  %32 = getelementptr inbounds %struct.hmm, %struct.hmm* %31, i32 0, i32 0
  store %struct.mmu_notifier* %32, %struct.mmu_notifier** %2, align 8
  br label %33

33:                                               ; preds = %13, %9
  %34 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  ret %struct.mmu_notifier* %34
}

declare dso_local %struct.hmm* @kzalloc(i32, i32) #1

declare dso_local %struct.mmu_notifier* @ERR_PTR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
