; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_handle_mm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_handle_mm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@TASK_RUNNING = common dso_local global i32 0, align 4
@PGFAULT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_INSTRUCTION = common dso_local global i32 0, align 4
@FAULT_FLAG_REMOTE = common dso_local global i32 0, align 4
@VM_FAULT_SIGSEGV = common dso_local global i32 0, align 4
@FAULT_FLAG_USER = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_mm_fault(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @TASK_RUNNING, align 4
  %10 = call i32 @__set_current_state(i32 %9)
  %11 = load i32, i32* @PGFAULT, align 4
  %12 = call i32 @count_vm_event(i32 %11)
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PGFAULT, align 4
  %17 = call i32 @count_memcg_event_mm(i32 %15, i32 %16)
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @check_sync_rss_stat(i32 %18)
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FAULT_FLAG_INSTRUCTION, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FAULT_FLAG_REMOTE, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @arch_vma_access_permitted(%struct.vm_area_struct* %20, i32 %23, i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @VM_FAULT_SIGSEGV, align 4
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FAULT_FLAG_USER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @mem_cgroup_enter_user_fault()
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @hugetlb_fault(i32 %49, %struct.vm_area_struct* %50, i64 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %59

54:                                               ; preds = %41
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @__handle_mm_fault(%struct.vm_area_struct* %55, i64 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FAULT_FLAG_USER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = call i32 (...) @mem_cgroup_exit_user_fault()
  %66 = load i32, i32* @current, align 4
  %67 = call i64 @task_in_memcg_oom(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VM_FAULT_OOM, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = call i32 @mem_cgroup_oom_synchronize(i32 0)
  br label %76

76:                                               ; preds = %74, %69, %64
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %32
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @count_memcg_event_mm(i32, i32) #1

declare dso_local i32 @check_sync_rss_stat(i32) #1

declare dso_local i32 @arch_vma_access_permitted(%struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i32 @mem_cgroup_enter_user_fault(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @hugetlb_fault(i32, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_exit_user_fault(...) #1

declare dso_local i64 @task_in_memcg_oom(i32) #1

declare dso_local i32 @mem_cgroup_oom_synchronize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
