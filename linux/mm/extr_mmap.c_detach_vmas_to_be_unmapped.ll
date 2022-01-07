; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_detach_vmas_to_be_unmapped.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_detach_vmas_to_be_unmapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.vm_area_struct*, %struct.vm_area_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64)* @detach_vmas_to_be_unmapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_vmas_to_be_unmapped(%struct.mm_struct* %0, %struct.vm_area_struct* %1, %struct.vm_area_struct* %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct**, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %10, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %12 = icmp ne %struct.vm_area_struct* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  br label %19

16:                                               ; preds = %4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 3
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.vm_area_struct** [ %15, %13 ], [ %18, %16 ]
  store %struct.vm_area_struct** %20, %struct.vm_area_struct*** %9, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %22, align 8
  br label %23

23:                                               ; preds = %45, %19
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 2
  %27 = call i32 @vma_rb_erase(%struct.vm_area_struct* %24, i32* %26)
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %32, %struct.vm_area_struct** %10, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %34, align 8
  store %struct.vm_area_struct* %35, %struct.vm_area_struct** %6, align 8
  br label %36

36:                                               ; preds = %23
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = icmp ne %struct.vm_area_struct* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %23, label %47

47:                                               ; preds = %45
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %49 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %9, align 8
  store %struct.vm_area_struct* %48, %struct.vm_area_struct** %49, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = icmp ne %struct.vm_area_struct* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 2
  store %struct.vm_area_struct* %53, %struct.vm_area_struct** %55, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %57 = call i32 @vma_gap_update(%struct.vm_area_struct* %56)
  br label %69

58:                                               ; preds = %47
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %60 = icmp ne %struct.vm_area_struct* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = call i32 @vm_end_gap(%struct.vm_area_struct* %62)
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  %67 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %68 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %52
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %71, align 8
  %72 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %73 = call i32 @vmacache_invalidate(%struct.mm_struct* %72)
  ret void
}

declare dso_local i32 @vma_rb_erase(%struct.vm_area_struct*, i32*) #1

declare dso_local i32 @vma_gap_update(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_end_gap(%struct.vm_area_struct*) #1

declare dso_local i32 @vmacache_invalidate(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
