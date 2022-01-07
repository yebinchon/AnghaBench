; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_can_vma_merge_before.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_can_vma_merge_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32 }
%struct.anon_vma = type { i32 }
%struct.file = type { i32 }
%struct.vm_userfaultfd_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64, i32)* @can_vma_merge_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_vma_merge_before(%struct.vm_area_struct* %0, i64 %1, %struct.anon_vma* %2, %struct.file* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_userfaultfd_ctx, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.anon_vma*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %8, i32 0, i32 0
  store i32 %5, i32* %14, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.anon_vma* %2, %struct.anon_vma** %11, align 8
  store %struct.file* %3, %struct.file** %12, align 8
  store i64 %4, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %16 = load %struct.file*, %struct.file** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_mergeable_vma(%struct.vm_area_struct* %15, %struct.file* %16, i64 %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %6
  %23 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %28 = call i64 @is_mergeable_anon_vma(%struct.anon_vma* %23, i32 %26, %struct.vm_area_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %39

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %22, %6
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i64 @is_mergeable_vma(%struct.vm_area_struct*, %struct.file*, i64, i32) #1

declare dso_local i64 @is_mergeable_anon_vma(%struct.anon_vma*, i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
