; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_unmerge_ksm_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_unmerge_ksm_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @unmerge_ksm_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmerge_ksm_pages(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ksm_test_exit(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %43

27:                                               ; preds = %20
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ERESTARTSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @break_ksm(%struct.vm_area_struct* %35, i64 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %10

43:                                               ; preds = %26, %18
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i64 @ksm_test_exit(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @break_ksm(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
