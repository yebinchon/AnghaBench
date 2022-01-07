; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_may_oom.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_may_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.alloc_context = type { i64, i32, i32 }
%struct.oom_control = type { i32, i32, i32*, i32, i32 }

@oom_lock = common dso_local global i32 0, align 4
@__GFP_HARDWALL = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@ALLOC_WMARK_HIGH = common dso_local global i32 0, align 4
@ALLOC_CPUSET = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_DUMPCORE = common dso_local global i32 0, align 4
@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@ZONE_NORMAL = common dso_local global i64 0, align 8
@__GFP_THISNODE = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ALLOC_NO_WATERMARKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, %struct.alloc_context*, i64*)* @__alloc_pages_may_oom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__alloc_pages_may_oom(i32 %0, i32 %1, %struct.alloc_context* %2, i64* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.alloc_context*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.oom_control, align 8
  %11 = alloca %struct.page*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.alloc_context* %2, %struct.alloc_context** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %10, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %10, i32 0, i32 1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %10, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %10, i32 0, i32 3
  %18 = load %struct.alloc_context*, %struct.alloc_context** %8, align 8
  %19 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %10, i32 0, i32 4
  %22 = load %struct.alloc_context*, %struct.alloc_context** %8, align 8
  %23 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = call i32 @mutex_trylock(i32* @oom_lock)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i64*, i64** %9, align 8
  store i64 1, i64* %29, align 8
  %30 = call i32 @schedule_timeout_uninterruptible(i32 1)
  store %struct.page* null, %struct.page** %5, align 8
  br label %109

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @__GFP_HARDWALL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ALLOC_WMARK_HIGH, align 4
  %40 = load i32, i32* @ALLOC_CPUSET, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.alloc_context*, %struct.alloc_context** %8, align 8
  %43 = call %struct.page* @get_page_from_freelist(i32 %37, i32 %38, i32 %41, %struct.alloc_context* %42)
  store %struct.page* %43, %struct.page** %11, align 8
  %44 = load %struct.page*, %struct.page** %11, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %106

47:                                               ; preds = %31
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PF_DUMPCORE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %106

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %106

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %106

66:                                               ; preds = %60
  %67 = load %struct.alloc_context*, %struct.alloc_context** %8, align 8
  %68 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZONE_NORMAL, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %106

73:                                               ; preds = %66
  %74 = call i64 (...) @pm_suspended_storage()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %106

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @__GFP_THISNODE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %106

83:                                               ; preds = %77
  %84 = call i64 @out_of_memory(%struct.oom_control* %10)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @__GFP_NOFAIL, align 4
  %89 = and i32 %87, %88
  %90 = call i64 @WARN_ON_ONCE(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %86, %83
  %93 = load i64*, i64** %9, align 8
  store i64 1, i64* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @__GFP_NOFAIL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @ALLOC_NO_WATERMARKS, align 4
  %102 = load %struct.alloc_context*, %struct.alloc_context** %8, align 8
  %103 = call %struct.page* @__alloc_pages_cpuset_fallback(i32 %99, i32 %100, i32 %101, %struct.alloc_context* %102)
  store %struct.page* %103, %struct.page** %11, align 8
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %82, %76, %72, %65, %59, %54, %46
  %107 = call i32 @mutex_unlock(i32* @oom_lock)
  %108 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %108, %struct.page** %5, align 8
  br label %109

109:                                              ; preds = %106, %28
  %110 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %110
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local %struct.page* @get_page_from_freelist(i32, i32, i32, %struct.alloc_context*) #1

declare dso_local i64 @pm_suspended_storage(...) #1

declare dso_local i64 @out_of_memory(%struct.oom_control*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.page* @__alloc_pages_cpuset_fallback(i32, i32, i32, %struct.alloc_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
