; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_new_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_new_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { i32, %struct.dlm_lockstatus* }
%struct.dlm_lockstatus = type { %struct.dlm_lock* }

@dlm_lock_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dlm_lock* @dlm_new_lock(i32 %0, i32 %1, i32 %2, %struct.dlm_lockstatus* %3) #0 {
  %5 = alloca %struct.dlm_lock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_lockstatus*, align 8
  %10 = alloca %struct.dlm_lock*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dlm_lockstatus* %3, %struct.dlm_lockstatus** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @dlm_lock_cache, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.dlm_lock* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.dlm_lock* %14, %struct.dlm_lock** %10, align 8
  %15 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %16 = icmp ne %struct.dlm_lock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.dlm_lock* null, %struct.dlm_lock** %5, align 8
  br label %50

18:                                               ; preds = %4
  %19 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %9, align 8
  %20 = icmp ne %struct.dlm_lockstatus* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call %struct.dlm_lockstatus* @kzalloc(i32 8, i32 %22)
  store %struct.dlm_lockstatus* %23, %struct.dlm_lockstatus** %9, align 8
  %24 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %9, align 8
  %25 = icmp ne %struct.dlm_lockstatus* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @dlm_lock_cache, align 4
  %28 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %29 = call i32 @kmem_cache_free(i32 %27, %struct.dlm_lock* %28)
  store %struct.dlm_lock* null, %struct.dlm_lock** %5, align 8
  br label %50

30:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dlm_init_lock(%struct.dlm_lock* %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %41 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %9, align 8
  %44 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %45 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %44, i32 0, i32 1
  store %struct.dlm_lockstatus* %43, %struct.dlm_lockstatus** %45, align 8
  %46 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %47 = load %struct.dlm_lockstatus*, %struct.dlm_lockstatus** %9, align 8
  %48 = getelementptr inbounds %struct.dlm_lockstatus, %struct.dlm_lockstatus* %47, i32 0, i32 0
  store %struct.dlm_lock* %46, %struct.dlm_lock** %48, align 8
  %49 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  store %struct.dlm_lock* %49, %struct.dlm_lock** %5, align 8
  br label %50

50:                                               ; preds = %42, %26, %17
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  ret %struct.dlm_lock* %51
}

declare dso_local %struct.dlm_lock* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.dlm_lockstatus* @kzalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_init_lock(%struct.dlm_lock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
