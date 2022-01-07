; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_numa_migrate_prep.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_numa_migrate_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@NUMA_HINT_FAULTS = common dso_local global i32 0, align 4
@NUMA_HINT_FAULTS_LOCAL = common dso_local global i32 0, align 4
@TNF_FAULT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.vm_area_struct*, i64, i32, i32*)* @numa_migrate_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numa_migrate_prep(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call i32 @get_page(%struct.page* %11)
  %13 = load i32, i32* @NUMA_HINT_FAULTS, align 4
  %14 = call i32 @count_vm_numa_event(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 (...) @numa_node_id()
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* @NUMA_HINT_FAULTS_LOCAL, align 4
  %20 = call i32 @count_vm_numa_event(i32 %19)
  %21 = load i32, i32* @TNF_FAULT_LOCAL, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %5
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @mpol_misplaced(%struct.page* %26, %struct.vm_area_struct* %27, i64 %28)
  ret i32 %29
}

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @count_vm_numa_event(i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @mpol_misplaced(%struct.page*, %struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
