; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_is_mergeable_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_is_mergeable_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.TYPE_2__*, %struct.file* }
%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }
%struct.vm_userfaultfd_ctx = type { i32 }

@VM_SOFTDIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.file*, i64, i32)* @is_mergeable_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mergeable_vma(%struct.vm_area_struct* %0, %struct.file* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_userfaultfd_ctx, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %6, i32 0, i32 0
  store i32 %3, i32* %10, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i64 %2, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = xor i64 %13, %14
  %16 = load i64, i64* @VM_SOFTDIRTY, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load %struct.file*, %struct.file** %23, align 8
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = icmp ne %struct.file* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %49

28:                                               ; preds = %21
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %49

41:                                               ; preds = %33, %28
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %43 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @is_mergeable_vm_userfaultfd_ctx(%struct.vm_area_struct* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %49

48:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %40, %27, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @is_mergeable_vm_userfaultfd_ctx(%struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
