; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_create_huge_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_create_huge_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.vm_fault*, i32)* }

@PE_SIZE_PMD = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @create_huge_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_huge_pmd(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %4 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %5 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = call i64 @vma_is_anonymous(%struct.TYPE_4__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %11 = call i32 @do_huge_pmd_anonymous_page(%struct.vm_fault* %10)
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.vm_fault*, i32)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i32)** %27, align 8
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = load i32, i32* @PE_SIZE_PMD, align 4
  %31 = call i32 %28(%struct.vm_fault* %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %12
  %33 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %21, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @vma_is_anonymous(%struct.TYPE_4__*) #1

declare dso_local i32 @do_huge_pmd_anonymous_page(%struct.vm_fault*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
