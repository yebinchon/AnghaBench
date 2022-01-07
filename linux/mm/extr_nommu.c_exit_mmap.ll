; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_exit_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_exit_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct*, i64 }
%struct.vm_area_struct = type { %struct.vm_area_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = icmp ne %struct.mm_struct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %15, %7
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %3, align 8
  %14 = icmp ne %struct.vm_area_struct* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %20, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %22 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %21)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %25 = call i32 @delete_vma(%struct.mm_struct* %23, %struct.vm_area_struct* %24)
  %26 = call i32 (...) @cond_resched()
  br label %10

27:                                               ; preds = %6, %10
  ret void
}

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @delete_vma(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
