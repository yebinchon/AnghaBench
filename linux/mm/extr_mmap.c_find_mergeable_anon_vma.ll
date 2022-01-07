; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_find_mergeable_anon_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_find_mergeable_anon_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma = type { i32 }
%struct.vm_area_struct = type { %struct.vm_area_struct*, %struct.vm_area_struct* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.anon_vma* @find_mergeable_anon_vma(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.anon_vma*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.anon_vma*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 1
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = icmp ne %struct.vm_area_struct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = call %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct* %13, %struct.vm_area_struct* %14, %struct.vm_area_struct* %15)
  store %struct.anon_vma* %16, %struct.anon_vma** %4, align 8
  %17 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  %18 = icmp ne %struct.anon_vma* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  store %struct.anon_vma* %20, %struct.anon_vma** %2, align 8
  br label %40

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %11
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  store %struct.vm_area_struct* %25, %struct.vm_area_struct** %5, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = icmp ne %struct.vm_area_struct* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %39

29:                                               ; preds = %22
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %33 = call %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct* %30, %struct.vm_area_struct* %31, %struct.vm_area_struct* %32)
  store %struct.anon_vma* %33, %struct.anon_vma** %4, align 8
  %34 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  %35 = icmp ne %struct.anon_vma* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  store %struct.anon_vma* %37, %struct.anon_vma** %2, align 8
  br label %40

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %28
  store %struct.anon_vma* null, %struct.anon_vma** %2, align 8
  br label %40

40:                                               ; preds = %39, %36, %19
  %41 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  ret %struct.anon_vma* %41
}

declare dso_local %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
