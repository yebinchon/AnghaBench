; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_prepare_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_prepare_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_context = type { i32, i32*, i32, i32 }

@__GFP_HARDWALL = common dso_local global i32 0, align 4
@cpuset_current_mems_allowed = common dso_local global i32 0, align 4
@ALLOC_CPUSET = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@CONFIG_CMA = common dso_local global i32 0, align 4
@MIGRATE_MOVABLE = common dso_local global i32 0, align 4
@ALLOC_CMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, %struct.alloc_context*, i32*, i32*)* @prepare_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_alloc_pages(i32 %0, i32 %1, i32 %2, i32* %3, %struct.alloc_context* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.alloc_context*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.alloc_context* %4, %struct.alloc_context** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @gfp_zone(i32 %16)
  %18 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %19 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @node_zonelist(i32 %20, i32 %21)
  %23 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %24 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %27 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @gfpflags_to_migratetype(i32 %28)
  %30 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %31 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = call i64 (...) @cpusets_enabled()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %7
  %35 = load i32, i32* @__GFP_HARDWALL, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %40 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %45 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %44, i32 0, i32 1
  store i32* @cpuset_current_mems_allowed, i32** %45, align 8
  br label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @ALLOC_CPUSET, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %7
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @fs_reclaim_acquire(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @fs_reclaim_release(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @might_sleep_if(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @should_fail_alloc_page(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %82

66:                                               ; preds = %52
  %67 = load i32, i32* @CONFIG_CMA, align 4
  %68 = call i64 @IS_ENABLED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.alloc_context*, %struct.alloc_context** %13, align 8
  %72 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MIGRATE_MOVABLE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @ALLOC_CMA, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %70, %66
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @gfp_zone(i32) #1

declare dso_local i32 @node_zonelist(i32, i32) #1

declare dso_local i32 @gfpflags_to_migratetype(i32) #1

declare dso_local i64 @cpusets_enabled(...) #1

declare dso_local i32 @fs_reclaim_acquire(i32) #1

declare dso_local i32 @fs_reclaim_release(i32) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i64 @should_fail_alloc_page(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
