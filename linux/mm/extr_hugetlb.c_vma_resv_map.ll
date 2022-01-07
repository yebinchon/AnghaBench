; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_vma_resv_map.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_vma_resv_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resv_map = type { i32 }
%struct.vm_area_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@VM_MAYSHARE = common dso_local global i32 0, align 4
@HPAGE_RESV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resv_map* (%struct.vm_area_struct*)* @vma_resv_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resv_map* @vma_resv_map(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.resv_map*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = call i32 @VM_BUG_ON_VMA(i32 %10, %struct.vm_area_struct* %11)
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VM_MAYSHARE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.address_space*, %struct.address_space** %23, align 8
  store %struct.address_space* %24, %struct.address_space** %4, align 8
  %25 = load %struct.address_space*, %struct.address_space** %4, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.resv_map* @inode_resv_map(%struct.inode* %28)
  store %struct.resv_map* %29, %struct.resv_map** %2, align 8
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %32 = call i32 @get_vma_private_data(%struct.vm_area_struct* %31)
  %33 = load i32, i32* @HPAGE_RESV_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.resv_map*
  store %struct.resv_map* %37, %struct.resv_map** %2, align 8
  br label %38

38:                                               ; preds = %30, %19
  %39 = load %struct.resv_map*, %struct.resv_map** %2, align 8
  ret %struct.resv_map* %39
}

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local %struct.resv_map* @inode_resv_map(%struct.inode*) #1

declare dso_local i32 @get_vma_private_data(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
