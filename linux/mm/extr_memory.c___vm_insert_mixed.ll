; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___vm_insert_mixed.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___vm_insert_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32 }
%struct.page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@CONFIG_ARCH_HAS_PTE_SPECIAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32, i32)* @__vm_insert_mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vm_insert_mixed(%struct.vm_area_struct* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vm_mixed_ok(%struct.vm_area_struct* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %35, i32* %5, align 4
  br label %94

36:                                               ; preds = %28
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @track_pfn_insert(%struct.vm_area_struct* %37, i32* %10, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pfn_t_to_pfn(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pfn_modify_allowed(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %46, i32* %5, align 4
  br label %94

47:                                               ; preds = %36
  %48 = load i32, i32* @CONFIG_ARCH_HAS_PTE_SPECIAL, align 4
  %49 = call i32 @IS_ENABLED(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @pfn_t_devmap(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @pfn_t_valid(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pfn_t_to_pfn(i32 %60)
  %62 = call %struct.page* @pfn_to_page(i32 %61)
  store %struct.page* %62, %struct.page** %12, align 8
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.page*, %struct.page** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @insert_page(%struct.vm_area_struct* %63, i64 %64, %struct.page* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  br label %75

68:                                               ; preds = %55, %51, %47
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @insert_pfn(%struct.vm_area_struct* %69, i64 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %94

75:                                               ; preds = %59
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %91, i32* %5, align 4
  br label %94

92:                                               ; preds = %85, %82
  %93 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %90, %80, %68, %45, %34
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vm_mixed_ok(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @track_pfn_insert(%struct.vm_area_struct*, i32*, i32) #1

declare dso_local i32 @pfn_modify_allowed(i32, i32) #1

declare dso_local i32 @pfn_t_to_pfn(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pfn_t_devmap(i32) #1

declare dso_local i64 @pfn_t_valid(i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @insert_page(%struct.vm_area_struct*, i64, %struct.page*, i32) #1

declare dso_local i32 @insert_pfn(%struct.vm_area_struct*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
