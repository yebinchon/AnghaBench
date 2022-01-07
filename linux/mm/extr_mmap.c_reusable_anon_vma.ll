; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_reusable_anon_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_reusable_anon_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.anon_vma* (%struct.vm_area_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*)* @reusable_anon_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.anon_vma* @reusable_anon_vma(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca %struct.anon_vma*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.anon_vma*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %11 = call i64 @anon_vma_compatible(%struct.vm_area_struct* %9, %struct.vm_area_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.anon_vma* @READ_ONCE(i32 %16)
  store %struct.anon_vma* %17, %struct.anon_vma** %8, align 8
  %18 = load %struct.anon_vma*, %struct.anon_vma** %8, align 8
  %19 = icmp ne %struct.anon_vma* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = call i64 @list_is_singular(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.anon_vma*, %struct.anon_vma** %8, align 8
  store %struct.anon_vma* %26, %struct.anon_vma** %4, align 8
  br label %29

27:                                               ; preds = %20, %13
  br label %28

28:                                               ; preds = %27, %3
  store %struct.anon_vma* null, %struct.anon_vma** %4, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  ret %struct.anon_vma* %30
}

declare dso_local i64 @anon_vma_compatible(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local %struct.anon_vma* @READ_ONCE(i32) #1

declare dso_local i64 @list_is_singular(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
