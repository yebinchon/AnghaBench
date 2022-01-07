; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_mm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.vm_area_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32, i32, i64*)* @unuse_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_mm(%struct.mm_struct* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 1
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %9, align 8
  br label %17

17:                                               ; preds = %37, %4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %19 = icmp ne %struct.vm_area_struct* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i64*, i64** %8, align 8
  %30 = call i32 @unuse_vma(%struct.vm_area_struct* %26, i32 %27, i32 %28, i64* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %41

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %20
  %36 = call i32 (...) @cond_resched()
  br label %37

37:                                               ; preds = %35
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %39, align 8
  store %struct.vm_area_struct* %40, %struct.vm_area_struct** %9, align 8
  br label %17

41:                                               ; preds = %33, %17
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 0
  %44 = call i32 @up_read(i32* %43)
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @unuse_vma(%struct.vm_area_struct*, i32, i32, i64*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
