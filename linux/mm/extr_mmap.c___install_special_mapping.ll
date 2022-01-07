; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___install_special_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___install_special_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i8*, %struct.vm_operations_struct*, i32 }
%struct.mm_struct = type { i64 }
%struct.vm_operations_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i64 0, align 8
@VM_SOFTDIRTY = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (%struct.mm_struct*, i64, i64, i64, i8*, %struct.vm_operations_struct*)* @__install_special_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @__install_special_mapping(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3, i8* %4, %struct.vm_operations_struct* %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vm_operations_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.vm_operations_struct* %5, %struct.vm_operations_struct** %13, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %17 = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* %16)
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %15, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %19 = icmp eq %struct.vm_area_struct* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.vm_area_struct* @ERR_PTR(i32 %25)
  store %struct.vm_area_struct* %26, %struct.vm_area_struct** %7, align 8
  br label %82

27:                                               ; preds = %6
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %36, %39
  %41 = load i64, i64* @VM_DONTEXPAND, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @VM_SOFTDIRTY, align 8
  %44 = or i64 %42, %43
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @vm_get_page_prot(i64 %49)
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %13, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 4
  store %struct.vm_operations_struct* %53, %struct.vm_operations_struct** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %61 = call i32 @insert_vm_struct(%struct.mm_struct* %59, %struct.vm_area_struct* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %27
  br label %77

65:                                               ; preds = %27
  %66 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @PAGE_SHIFT, align 8
  %72 = lshr i64 %70, %71
  %73 = call i32 @vm_stat_account(%struct.mm_struct* %66, i64 %69, i64 %72)
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %75 = call i32 @perf_event_mmap(%struct.vm_area_struct* %74)
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %76, %struct.vm_area_struct** %7, align 8
  br label %82

77:                                               ; preds = %64
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %79 = call i32 @vm_area_free(%struct.vm_area_struct* %78)
  %80 = load i32, i32* %14, align 4
  %81 = call %struct.vm_area_struct* @ERR_PTR(i32 %80)
  store %struct.vm_area_struct* %81, %struct.vm_area_struct** %7, align 8
  br label %82

82:                                               ; preds = %77, %65, %23
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  ret %struct.vm_area_struct* %83
}

declare dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vm_area_struct* @ERR_PTR(i32) #1

declare dso_local i32 @vm_get_page_prot(i64) #1

declare dso_local i32 @insert_vm_struct(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_area_free(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
