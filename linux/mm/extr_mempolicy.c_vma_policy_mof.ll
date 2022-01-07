; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_vma_policy_mof.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_vma_policy_mof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mempolicy*, i32, %struct.TYPE_2__* }
%struct.mempolicy = type { i32 }
%struct.TYPE_2__ = type { %struct.mempolicy* (%struct.vm_area_struct*, i32)* }

@MPOL_F_MOF = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vma_policy_mof(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mempolicy* (%struct.vm_area_struct*, i32)*, %struct.mempolicy* (%struct.vm_area_struct*, i32)** %14, align 8
  %16 = icmp ne %struct.mempolicy* (%struct.vm_area_struct*, i32)* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.mempolicy* (%struct.vm_area_struct*, i32)*, %struct.mempolicy* (%struct.vm_area_struct*, i32)** %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.mempolicy* %22(%struct.vm_area_struct* %23, i32 %26)
  store %struct.mempolicy* %27, %struct.mempolicy** %4, align 8
  %28 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %29 = icmp ne %struct.mempolicy* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %32 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MPOL_F_MOF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %30, %17
  %39 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %40 = call i32 @mpol_cond_put(%struct.mempolicy* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %10, %1
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load %struct.mempolicy*, %struct.mempolicy** %44, align 8
  store %struct.mempolicy* %45, %struct.mempolicy** %4, align 8
  %46 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %47 = icmp ne %struct.mempolicy* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @current, align 4
  %50 = call %struct.mempolicy* @get_task_policy(i32 %49)
  store %struct.mempolicy* %50, %struct.mempolicy** %4, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %53 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MPOL_F_MOF, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %38
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

declare dso_local %struct.mempolicy* @get_task_policy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
