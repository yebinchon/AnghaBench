; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_alloc_hugepage_direct_gfpmask.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_alloc_hugepage_direct_gfpmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@VM_HUGEPAGE = common dso_local global i32 0, align 4
@TRANSPARENT_HUGEPAGE_DEFRAG_DIRECT_FLAG = common dso_local global i32 0, align 4
@transparent_hugepage_flags = common dso_local global i32 0, align 4
@GFP_TRANSHUGE = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@TRANSPARENT_HUGEPAGE_DEFRAG_KSWAPD_FLAG = common dso_local global i32 0, align 4
@GFP_TRANSHUGE_LIGHT = common dso_local global i32 0, align 4
@__GFP_KSWAPD_RECLAIM = common dso_local global i32 0, align 4
@TRANSPARENT_HUGEPAGE_DEFRAG_KSWAPD_OR_MADV_FLAG = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@TRANSPARENT_HUGEPAGE_DEFRAG_REQ_MADV_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @alloc_hugepage_direct_gfpmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_hugepage_direct_gfpmask(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VM_HUGEPAGE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @TRANSPARENT_HUGEPAGE_DEFRAG_DIRECT_FLAG, align 4
  %15 = call i64 @test_bit(i32 %14, i32* @transparent_hugepage_flags)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_TRANSHUGE, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @__GFP_NORETRY, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 0, %21 ], [ %23, %22 ]
  %26 = or i32 %18, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %1
  %28 = load i32, i32* @TRANSPARENT_HUGEPAGE_DEFRAG_KSWAPD_FLAG, align 4
  %29 = call i64 @test_bit(i32 %28, i32* @transparent_hugepage_flags)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @GFP_TRANSHUGE_LIGHT, align 4
  %33 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %66

35:                                               ; preds = %27
  %36 = load i32, i32* @TRANSPARENT_HUGEPAGE_DEFRAG_KSWAPD_OR_MADV_FLAG, align 4
  %37 = call i64 @test_bit(i32 %36, i32* @transparent_hugepage_flags)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* @GFP_TRANSHUGE_LIGHT, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = or i32 %40, %48
  store i32 %49, i32* %2, align 4
  br label %66

50:                                               ; preds = %35
  %51 = load i32, i32* @TRANSPARENT_HUGEPAGE_DEFRAG_REQ_MADV_FLAG, align 4
  %52 = call i64 @test_bit(i32 %51, i32* @transparent_hugepage_flags)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @GFP_TRANSHUGE_LIGHT, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = or i32 %55, %62
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @GFP_TRANSHUGE_LIGHT, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %61, %47, %31, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
