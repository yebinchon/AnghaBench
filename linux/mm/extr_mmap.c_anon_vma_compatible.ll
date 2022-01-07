; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_anon_vma_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_anon_vma_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i32, i64 }

@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_SOFTDIRTY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_area_struct*)* @anon_vma_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anon_vma_compatible(%struct.vm_area_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %2
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = call i32 @vma_policy(%struct.vm_area_struct* %13)
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = call i32 @vma_policy(%struct.vm_area_struct* %15)
  %17 = call i64 @mpol_equal(i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %12
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %30, %33
  %35 = load i32, i32* @VM_READ, align 4
  %36 = load i32, i32* @VM_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VM_EXEC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @VM_SOFTDIRTY, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %34, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %27
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = zext i32 %59 to i64
  %61 = ashr i64 %58, %60
  %62 = add nsw i64 %51, %61
  %63 = icmp eq i64 %48, %62
  br label %64

64:                                               ; preds = %45, %27, %19, %12, %2
  %65 = phi i1 [ false, %27 ], [ false, %19 ], [ false, %12 ], [ false, %2 ], [ %63, %45 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i64 @mpol_equal(i32, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
