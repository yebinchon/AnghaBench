; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___remove_shared_vm_struct.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___remove_shared_vm_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VM_DENYWRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, %struct.file*, %struct.address_space*)* @__remove_shared_vm_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_shared_vm_struct(%struct.vm_area_struct* %0, %struct.file* %1, %struct.address_space* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.address_space* %2, %struct.address_space** %6, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VM_DENYWRITE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.TYPE_2__* @file_inode(%struct.file* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @atomic_inc(i32* %16)
  br label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VM_SHARED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.address_space*, %struct.address_space** %6, align 8
  %27 = call i32 @mapping_unmap_writable(%struct.address_space* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.address_space*, %struct.address_space** %6, align 8
  %30 = call i32 @flush_dcache_mmap_lock(%struct.address_space* %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = load %struct.address_space*, %struct.address_space** %6, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = call i32 @vma_interval_tree_remove(%struct.vm_area_struct* %31, i32* %33)
  %35 = load %struct.address_space*, %struct.address_space** %6, align 8
  %36 = call i32 @flush_dcache_mmap_unlock(%struct.address_space* %35)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i32 @mapping_unmap_writable(%struct.address_space*) #1

declare dso_local i32 @flush_dcache_mmap_lock(%struct.address_space*) #1

declare dso_local i32 @vma_interval_tree_remove(%struct.vm_area_struct*, i32*) #1

declare dso_local i32 @flush_dcache_mmap_unlock(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
