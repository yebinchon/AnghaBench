; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_shared_policy_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_shared_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_policy = type { i32, i32 }
%struct.mempolicy = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@scratch = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpol_shared_policy_init(%struct.shared_policy* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca %struct.shared_policy*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct, align 4
  %7 = alloca %struct.mempolicy*, align 8
  store %struct.shared_policy* %0, %struct.shared_policy** %3, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %4, align 8
  %8 = load i32, i32* @RB_ROOT, align 4
  %9 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %10 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %12 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %11, i32 0, i32 0
  %13 = call i32 @rwlock_init(i32* %12)
  %14 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %15 = icmp ne %struct.mempolicy* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %2
  %17 = load i32, i32* @scratch, align 4
  %18 = call i32 @NODEMASK_SCRATCH(i32 %17)
  %19 = load i32, i32* @scratch, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %64

22:                                               ; preds = %16
  %23 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %24 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %27 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call %struct.mempolicy* @mpol_new(i32 %25, i32 %28, i32* %31)
  store %struct.mempolicy* %32, %struct.mempolicy** %7, align 8
  %33 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %34 = call i64 @IS_ERR(%struct.mempolicy* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %61

37:                                               ; preds = %22
  %38 = load i32, i32* @current, align 4
  %39 = call i32 @task_lock(i32 %38)
  %40 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %41 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %42 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* @scratch, align 4
  %45 = call i32 @mpol_set_nodemask(%struct.mempolicy* %40, i32* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @current, align 4
  %47 = call i32 @task_unlock(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %58

51:                                               ; preds = %37
  %52 = call i32 @vma_init(%struct.vm_area_struct* %6, i32* null)
  %53 = load i32, i32* @TASK_SIZE, align 4
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %56 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %57 = call i32 @mpol_set_shared_policy(%struct.shared_policy* %55, %struct.vm_area_struct* %6, %struct.mempolicy* %56)
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %60 = call i32 @mpol_put(%struct.mempolicy* %59)
  br label %61

61:                                               ; preds = %58, %36
  %62 = load i32, i32* @scratch, align 4
  %63 = call i32 @NODEMASK_SCRATCH_FREE(i32 %62)
  br label %64

64:                                               ; preds = %61, %21
  %65 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %66 = call i32 @mpol_put(%struct.mempolicy* %65)
  br label %67

67:                                               ; preds = %64, %2
  ret void
}

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @NODEMASK_SCRATCH(i32) #1

declare dso_local %struct.mempolicy* @mpol_new(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @mpol_set_nodemask(%struct.mempolicy*, i32*, i32) #1

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i32 @vma_init(%struct.vm_area_struct*, i32*) #1

declare dso_local i32 @mpol_set_shared_policy(%struct.shared_policy*, %struct.vm_area_struct*, %struct.mempolicy*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

declare dso_local i32 @NODEMASK_SCRATCH_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
