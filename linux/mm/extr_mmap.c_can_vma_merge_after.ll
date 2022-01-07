; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_can_vma_merge_after.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_can_vma_merge_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32 }
%struct.anon_vma = type { i32 }
%struct.file = type { i32 }
%struct.vm_userfaultfd_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64, i32)* @can_vma_merge_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_vma_merge_after(%struct.vm_area_struct* %0, i64 %1, %struct.anon_vma* %2, %struct.file* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_userfaultfd_ctx, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.anon_vma*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %8, i32 0, i32 0
  store i32 %5, i32* %15, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.anon_vma* %2, %struct.anon_vma** %11, align 8
  store %struct.file* %3, %struct.file** %12, align 8
  store i64 %4, i64* %13, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %17 = load %struct.file*, %struct.file** %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_mergeable_vma(%struct.vm_area_struct* %16, %struct.file* %17, i64 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %6
  %24 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %29 = call i64 @is_mergeable_anon_vma(%struct.anon_vma* %24, i32 %27, %struct.vm_area_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = call i64 @vma_pages(%struct.vm_area_struct* %32)
  store i64 %33, i64* %14, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %13, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %44

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %23, %6
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i64 @is_mergeable_vma(%struct.vm_area_struct*, %struct.file*, i64, i32) #1

declare dso_local i64 @is_mergeable_anon_vma(%struct.anon_vma*, i32, %struct.vm_area_struct*) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
