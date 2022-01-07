; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___vma_link_file.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___vma_link_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VM_DENYWRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @__vma_link_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vma_link_file(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 1
  %7 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %7, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VM_DENYWRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = call %struct.TYPE_2__* @file_inode(%struct.file* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_dec(i32* %23)
  br label %25

25:                                               ; preds = %20, %10
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VM_SHARED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.address_space*, %struct.address_space** %4, align 8
  %34 = getelementptr inbounds %struct.address_space, %struct.address_space* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.address_space*, %struct.address_space** %4, align 8
  %38 = call i32 @flush_dcache_mmap_lock(%struct.address_space* %37)
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %40 = load %struct.address_space*, %struct.address_space** %4, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = call i32 @vma_interval_tree_insert(%struct.vm_area_struct* %39, i32* %41)
  %43 = load %struct.address_space*, %struct.address_space** %4, align 8
  %44 = call i32 @flush_dcache_mmap_unlock(%struct.address_space* %43)
  br label %45

45:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @flush_dcache_mmap_lock(%struct.address_space*) #1

declare dso_local i32 @vma_interval_tree_insert(%struct.vm_area_struct*, i32*) #1

declare dso_local i32 @flush_dcache_mmap_unlock(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
