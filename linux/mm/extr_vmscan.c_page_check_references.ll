; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_page_check_references.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_page_check_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.scan_control = type { i32 }

@VM_LOCKED = common dso_local global i64 0, align 8
@PAGEREF_RECLAIM = common dso_local global i32 0, align 4
@PAGEREF_ACTIVATE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i64 0, align 8
@PAGEREF_KEEP = common dso_local global i32 0, align 4
@PAGEREF_RECLAIM_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.scan_control*)* @page_check_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_check_references(%struct.page* %0, %struct.scan_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.scan_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.scan_control* %1, %struct.scan_control** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %11 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @page_referenced(%struct.page* %9, i32 1, i32 %12, i64* %8)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @TestClearPageReferenced(%struct.page* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @VM_LOCKED, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @PAGEREF_RECLAIM, align 4
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i64 @PageSwapBacked(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PAGEREF_ACTIVATE, align 4
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @SetPageReferenced(%struct.page* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %31
  %40 = load i32, i32* @PAGEREF_ACTIVATE, align 4
  store i32 %40, i32* %3, align 4
  br label %61

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @VM_EXEC, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @PAGEREF_ACTIVATE, align 4
  store i32 %47, i32* %3, align 4
  br label %61

48:                                               ; preds = %41
  %49 = load i32, i32* @PAGEREF_KEEP, align 4
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %22
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = call i64 @PageSwapBacked(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @PAGEREF_RECLAIM_CLEAN, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %53, %50
  %60 = load i32, i32* @PAGEREF_RECLAIM, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57, %48, %46, %39, %29, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @page_referenced(%struct.page*, i32, i32, i64*) #1

declare dso_local i32 @TestClearPageReferenced(%struct.page*) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
