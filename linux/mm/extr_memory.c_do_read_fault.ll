; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_read_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_read_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@fault_around_bytes = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_read_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 1
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @fault_around_bytes, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %22 = call i32 @do_fault_around(%struct.vm_fault* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %15, %1
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = call i32 @__do_fault(%struct.vm_fault* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VM_FAULT_ERROR, align 4
  %33 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_FAULT_RETRY, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %28
  %43 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %44 = call i32 @finish_fault(%struct.vm_fault* %43)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %48 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @unlock_page(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @VM_FAULT_ERROR, align 4
  %53 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @VM_FAULT_RETRY, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %62 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @put_page(i32 %63)
  br label %65

65:                                               ; preds = %60, %42
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %40, %25
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @do_fault_around(%struct.vm_fault*) #1

declare dso_local i32 @__do_fault(%struct.vm_fault*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @finish_fault(%struct.vm_fault*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
