; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_nodemask.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___alloc_pages_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.alloc_context = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALLOC_WMARK_LOW = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@gfp_allowed_mask = common dso_local global i32 0, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.alloc_context, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @ALLOC_WMARK_LOW, align 4
  store i32 %14, i32* %11, align 4
  %15 = bitcast %struct.alloc_context* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_ORDER, align 4
  %18 = icmp uge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  store %struct.page* null, %struct.page** %5, align 8
  br label %111

30:                                               ; preds = %4
  %31 = load i32, i32* @gfp_allowed_mask, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @prepare_alloc_pages(i32 %35, i32 %36, i32 %37, i32* %38, %struct.alloc_context* %13, i32* %12, i32* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store %struct.page* null, %struct.page** %5, align 8
  br label %111

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @finalise_ac(i32 %43, %struct.alloc_context* %13)
  %45 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %13, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @alloc_flags_nofragment(i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.page* @get_page_from_freelist(i32 %53, i32 %54, i32 %55, %struct.alloc_context* %13)
  store %struct.page* %56, %struct.page** %10, align 8
  %57 = load %struct.page*, %struct.page** %10, align 8
  %58 = call i64 @likely(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %79

61:                                               ; preds = %42
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @current_gfp_context(i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %13, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %13, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %13, i32 0, i32 2
  store i32* %73, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %61
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call %struct.page* @__alloc_pages_slowpath(i32 %76, i32 %77, %struct.alloc_context* %13)
  store %struct.page* %78, %struct.page** %10, align 8
  br label %79

79:                                               ; preds = %75, %60
  %80 = call i64 (...) @memcg_kmem_enabled()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @__GFP_ACCOUNT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load %struct.page*, %struct.page** %10, align 8
  %89 = icmp ne %struct.page* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.page*, %struct.page** %10, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @__memcg_kmem_charge(%struct.page* %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.page*, %struct.page** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @__free_pages(%struct.page* %100, i32 %101)
  store %struct.page* null, %struct.page** %10, align 8
  br label %103

103:                                              ; preds = %99, %90, %87, %82, %79
  %104 = load %struct.page*, %struct.page** %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %13, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @trace_mm_page_alloc(%struct.page* %104, i32 %105, i32 %106, i32 %108)
  %110 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %110, %struct.page** %5, align 8
  br label %111

111:                                              ; preds = %103, %41, %22
  %112 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @prepare_alloc_pages(i32, i32, i32, i32*, %struct.alloc_context*, i32*, i32*) #2

declare dso_local i32 @finalise_ac(i32, %struct.alloc_context*) #2

declare dso_local i32 @alloc_flags_nofragment(i32, i32) #2

declare dso_local %struct.page* @get_page_from_freelist(i32, i32, i32, %struct.alloc_context*) #2

declare dso_local i64 @likely(%struct.page*) #2

declare dso_local i32 @current_gfp_context(i32) #2

declare dso_local %struct.page* @__alloc_pages_slowpath(i32, i32, %struct.alloc_context*) #2

declare dso_local i64 @memcg_kmem_enabled(...) #2

declare dso_local i64 @__memcg_kmem_charge(%struct.page*, i32, i32) #2

declare dso_local i32 @__free_pages(%struct.page*, i32) #2

declare dso_local i32 @trace_mm_page_alloc(%struct.page*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
