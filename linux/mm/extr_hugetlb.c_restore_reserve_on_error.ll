; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_restore_reserve_on_error.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_restore_reserve_on_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, %struct.vm_area_struct*, i64, %struct.page*)* @restore_reserve_on_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_reserve_on_error(%struct.hstate* %0, %struct.vm_area_struct* %1, i64 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.hstate*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  store %struct.hstate* %0, %struct.hstate** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.page* %3, %struct.page** %8, align 8
  %10 = load %struct.page*, %struct.page** %8, align 8
  %11 = call i32 @PagePrivate(%struct.page* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %4
  %15 = load %struct.hstate*, %struct.hstate** %5, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @vma_needs_reservation(%struct.hstate* %15, %struct.vm_area_struct* %16, i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i32 @ClearPagePrivate(%struct.page* %25)
  br label %50

27:                                               ; preds = %14
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.hstate*, %struct.hstate** %5, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @vma_add_reservation(%struct.hstate* %31, %struct.vm_area_struct* %32, i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.page*, %struct.page** %8, align 8
  %42 = call i32 @ClearPagePrivate(%struct.page* %41)
  br label %43

43:                                               ; preds = %40, %30
  br label %49

44:                                               ; preds = %27
  %45 = load %struct.hstate*, %struct.hstate** %5, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @vma_end_reservation(%struct.hstate* %45, %struct.vm_area_struct* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i64 @vma_needs_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i64 @vma_add_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @vma_end_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
