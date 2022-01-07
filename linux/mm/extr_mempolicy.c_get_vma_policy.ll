; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_get_vma_policy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_get_vma_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mempolicy* (%struct.vm_area_struct*, i64)* @get_vma_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mempolicy* @get_vma_policy(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mempolicy*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call %struct.mempolicy* @__get_vma_policy(%struct.vm_area_struct* %6, i64 %7)
  store %struct.mempolicy* %8, %struct.mempolicy** %5, align 8
  %9 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %10 = icmp ne %struct.mempolicy* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @current, align 4
  %13 = call %struct.mempolicy* @get_task_policy(i32 %12)
  store %struct.mempolicy* %13, %struct.mempolicy** %5, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  ret %struct.mempolicy* %15
}

declare dso_local %struct.mempolicy* @__get_vma_policy(%struct.vm_area_struct*, i64) #1

declare dso_local %struct.mempolicy* @get_task_policy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
