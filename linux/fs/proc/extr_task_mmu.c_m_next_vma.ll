; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_m_next_vma.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_m_next_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_maps_private = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (%struct.proc_maps_private*, %struct.vm_area_struct*)* @m_next_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @m_next_vma(%struct.proc_maps_private* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.proc_maps_private*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  store %struct.proc_maps_private* %0, %struct.proc_maps_private** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.proc_maps_private*, %struct.proc_maps_private** %4, align 8
  %8 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %7, i32 0, i32 0
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %10 = icmp eq %struct.vm_area_struct* %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = inttoptr i64 %15 to %struct.vm_area_struct*
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.proc_maps_private*, %struct.proc_maps_private** %4, align 8
  %21 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %20, i32 0, i32 0
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi %struct.vm_area_struct* [ %18, %17 ], [ %22, %19 ]
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %3, align 8
  br label %25

25:                                               ; preds = %23, %11
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  ret %struct.vm_area_struct* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
