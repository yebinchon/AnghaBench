; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vma_wants_writenotify.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vma_wants_writenotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.TYPE_2__*, %struct.vm_operations_struct* }
%struct.TYPE_2__ = type { i64 }
%struct.vm_operations_struct = type { i64, i64 }

@VM_WRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@CONFIG_MEM_SOFT_DIRTY = common dso_local global i32 0, align 4
@VM_SOFTDIRTY = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vma_wants_writenotify(%struct.vm_area_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_operations_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 2
  %13 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %12, align 8
  store %struct.vm_operations_struct* %13, %struct.vm_operations_struct** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @VM_WRITE, align 4
  %16 = load i32, i32* @VM_SHARED, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @VM_WRITE, align 4
  %20 = load i32, i32* @VM_SHARED, align 4
  %21 = or i32 %19, %20
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  %25 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %7, align 8
  %26 = icmp ne %struct.vm_operations_struct* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %7, align 8
  %29 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %7, align 8
  %34 = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  store i32 1, i32* %3, align 4
  br label %86

38:                                               ; preds = %32, %24
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @pgprot_val(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @vm_pgprot_modify(i32 %41, i32 %42)
  %44 = call i64 @pgprot_val(i32 %43)
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %86

47:                                               ; preds = %38
  %48 = load i32, i32* @CONFIG_MEM_SOFT_DIRTY, align 4
  %49 = call i64 @IS_ENABLED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @VM_SOFTDIRTY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %86

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @VM_PFNMAP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %86

63:                                               ; preds = %57
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @mapping_cap_account_dirty(i64 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %75, %68, %63
  %84 = phi i1 [ false, %68 ], [ false, %63 ], [ %82, %75 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %62, %56, %46, %37, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @vm_pgprot_modify(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @mapping_cap_account_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
