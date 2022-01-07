; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_finish_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_finish_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, i64, i32, %struct.TYPE_2__*, %struct.page*, %struct.page* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }

@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @finish_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %6 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VM_SHARED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 6
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %3, align 8
  br label %28

24:                                               ; preds = %11, %1
  %25 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 5
  %27 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %27, %struct.page** %3, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %30 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VM_SHARED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %39 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @check_stable_address_space(i32 %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %37, %28
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %49 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.page*, %struct.page** %3, align 8
  %53 = call i64 @alloc_set_pte(%struct.vm_fault* %48, i32 %51, %struct.page* %52)
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %47, %44
  %55 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %56 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %61 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %64 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pte_unmap_unlock(i64 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @check_stable_address_space(i32) #1

declare dso_local i64 @alloc_set_pte(%struct.vm_fault*, i32, %struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
