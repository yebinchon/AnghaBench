; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_buddy_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_alloc_buddy_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i32 }

@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@HTLB_BUDDY_PGALLOC = common dso_local global i32 0, align 4
@HTLB_BUDDY_PGALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.hstate*, i32, i32, i32*, i32*)* @alloc_buddy_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_buddy_huge_page(%struct.hstate* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.hstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.hstate*, %struct.hstate** %6, align 8
  %15 = call i32 @huge_page_order(%struct.hstate* %14)
  store i32 %15, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @node_isset(i32 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %24, %18, %5
  %26 = load i32, i32* @__GFP_COMP, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @NUMA_NO_NODE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @numa_mem_id()
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call %struct.page* @__alloc_pages_nodemask(i32 %44, i32 %45, i32 %46, i32* %47)
  store %struct.page* %48, %struct.page** %12, align 8
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = icmp ne %struct.page* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @HTLB_BUDDY_PGALLOC, align 4
  %53 = call i32 @__count_vm_event(i32 %52)
  br label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @HTLB_BUDDY_PGALLOC_FAIL, align 4
  %56 = call i32 @__count_vm_event(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.page*, %struct.page** %12, align 8
  %62 = icmp ne %struct.page* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @node_clear(i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %66, %63, %60, %57
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.page*, %struct.page** %12, align 8
  %76 = icmp ne %struct.page* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @node_set(i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %80, %77, %74, %71
  %86 = load %struct.page*, %struct.page** %12, align 8
  ret %struct.page* %86
}

declare dso_local i32 @huge_page_order(%struct.hstate*) #1

declare dso_local i64 @node_isset(i32, i32) #1

declare dso_local i32 @numa_mem_id(...) #1

declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, i32*) #1

declare dso_local i32 @__count_vm_event(i32) #1

declare dso_local i32 @node_clear(i32, i32) #1

declare dso_local i32 @node_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
