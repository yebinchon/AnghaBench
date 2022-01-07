; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_shared_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_shared_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_shared_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_shared_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 1
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %9, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %11 = call i32 @__do_fault(%struct.vm_fault* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VM_FAULT_ERROR, align 4
  %14 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VM_FAULT_RETRY, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %1
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %23
  %31 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @unlock_page(i32 %33)
  %35 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %36 = call i32 @do_page_mkwrite(%struct.vm_fault* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @VM_FAULT_ERROR, align 4
  %42 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %30
  %47 = phi i1 [ true, %30 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %53 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @put_page(i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %89

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %23
  %59 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %60 = call i32 @finish_fault(%struct.vm_fault* %59)
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @VM_FAULT_ERROR, align 4
  %65 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @VM_FAULT_RETRY, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %58
  %73 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %74 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @unlock_page(i32 %75)
  %77 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %78 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @put_page(i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %89

82:                                               ; preds = %58
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %84 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %85 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @fault_dirty_shared_page(%struct.vm_area_struct* %83, i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %82, %72, %51, %21
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @__do_fault(%struct.vm_fault*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @do_page_mkwrite(%struct.vm_fault*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @finish_fault(%struct.vm_fault*) #1

declare dso_local i32 @fault_dirty_shared_page(%struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
