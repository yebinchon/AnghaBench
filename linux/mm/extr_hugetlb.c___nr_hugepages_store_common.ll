; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c___nr_hugepages_store_common.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c___nr_hugepages_store_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@node_states = common dso_local global i32* null, align 8
@N_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hstate*, i32, i64, i64)* @__nr_hugepages_store_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nr_hugepages_store_common(i32 %0, %struct.hstate* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.hstate* %1, %struct.hstate** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.hstate*, %struct.hstate** %8, align 8
  %16 = call i64 @hstate_is_gigantic(%struct.hstate* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = call i32 (...) @gigantic_page_runtime_supported()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %59

24:                                               ; preds = %18, %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NUMA_NO_NODE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i64 @init_nodemask_of_mempolicy(i32* %13)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** @node_states, align 8
  %36 = load i64, i64* @N_MEMORY, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %14, align 8
  br label %39

38:                                               ; preds = %31
  store i32* %13, i32** %14, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %43

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @init_nodemask_of_node(i32* %13, i32 %41)
  store i32* %13, i32** %14, align 8
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.hstate*, %struct.hstate** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @set_max_huge_pages(%struct.hstate* %44, i64 %45, i32 %46, i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  br label %56

54:                                               ; preds = %43
  %55 = load i64, i64* %11, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i64 [ %53, %51 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %21
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @hstate_is_gigantic(%struct.hstate*) #1

declare dso_local i32 @gigantic_page_runtime_supported(...) #1

declare dso_local i64 @init_nodemask_of_mempolicy(i32*) #1

declare dso_local i32 @init_nodemask_of_node(i32*, i32) #1

declare dso_local i32 @set_max_huge_pages(%struct.hstate*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
