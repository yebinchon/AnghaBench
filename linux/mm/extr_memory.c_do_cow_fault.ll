; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_cow_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_cow_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_DONE_COW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_cow_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cow_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 4
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %14, i32* %2, align 4
  br label %121

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @alloc_page_vma(i32 %16, %struct.vm_area_struct* %17, i32 %20)
  %22 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %29, i32* %2, align 4
  br label %121

30:                                               ; preds = %15
  %31 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %39 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %38, i32 0, i32 1
  %40 = call i64 @mem_cgroup_try_charge_delay(i32 %33, i32 %36, i32 %37, i32* %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %44 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @put_page(i32 %45)
  %47 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %47, i32* %2, align 4
  br label %121

48:                                               ; preds = %30
  %49 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %50 = call i32 @__do_fault(%struct.vm_fault* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @VM_FAULT_ERROR, align 4
  %53 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @VM_FAULT_RETRY, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %108

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VM_FAULT_DONE_COW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %121

68:                                               ; preds = %61
  %69 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %70 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %73 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %76 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %79 = call i32 @copy_user_highpage(i32 %71, i32 %74, i32 %77, %struct.vm_area_struct* %78)
  %80 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %81 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @__SetPageUptodate(i32 %82)
  %84 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %85 = call i32 @finish_fault(%struct.vm_fault* %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %89 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @unlock_page(i32 %90)
  %92 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %93 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @put_page(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @VM_FAULT_ERROR, align 4
  %98 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @VM_FAULT_RETRY, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %96, %101
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %68
  br label %108

106:                                              ; preds = %68
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %121

108:                                              ; preds = %105, %60
  %109 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %110 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %113 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mem_cgroup_cancel_charge(i32 %111, i32 %114, i32 0)
  %116 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %117 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @put_page(i32 %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %108, %106, %66, %42, %28, %13
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @alloc_page_vma(i32, %struct.vm_area_struct*, i32) #1

declare dso_local i64 @mem_cgroup_try_charge_delay(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @__do_fault(%struct.vm_fault*) #1

declare dso_local i32 @copy_user_highpage(i32, i32, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @__SetPageUptodate(i32) #1

declare dso_local i32 @finish_fault(%struct.vm_fault*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @mem_cgroup_cancel_charge(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
