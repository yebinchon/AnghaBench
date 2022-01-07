; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_apply.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_addr_filter = type { i32 }
%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.vm_area_struct* }
%struct.perf_addr_filter_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_addr_filter*, %struct.mm_struct*, %struct.perf_addr_filter_range*)* @perf_addr_filter_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_addr_filter_apply(%struct.perf_addr_filter* %0, %struct.mm_struct* %1, %struct.perf_addr_filter_range* %2) #0 {
  %4 = alloca %struct.perf_addr_filter*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.perf_addr_filter_range*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  store %struct.perf_addr_filter* %0, %struct.perf_addr_filter** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store %struct.perf_addr_filter_range* %2, %struct.perf_addr_filter_range** %6, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %10, %struct.vm_area_struct** %7, align 8
  br label %11

11:                                               ; preds = %28, %3
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %13 = icmp ne %struct.vm_area_struct* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %28

20:                                               ; preds = %14
  %21 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %4, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %23 = load %struct.perf_addr_filter_range*, %struct.perf_addr_filter_range** %6, align 8
  %24 = call i64 @perf_addr_filter_vma_adjust(%struct.perf_addr_filter* %21, %struct.vm_area_struct* %22, %struct.perf_addr_filter_range* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %32

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %30, align 8
  store %struct.vm_area_struct* %31, %struct.vm_area_struct** %7, align 8
  br label %11

32:                                               ; preds = %26, %11
  ret void
}

declare dso_local i64 @perf_addr_filter_vma_adjust(%struct.perf_addr_filter*, %struct.vm_area_struct*, %struct.perf_addr_filter_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
