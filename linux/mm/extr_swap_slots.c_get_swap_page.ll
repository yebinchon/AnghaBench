; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_get_swap_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_get_swap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.swap_slots_cache = type { i32, i64, i32, %struct.TYPE_6__* }

@CONFIG_THP_SWAP = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@swp_slots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_swap_page(%struct.page* %0) #0 {
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.swap_slots_cache*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i64 @PageTransHuge(%struct.page* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @CONFIG_THP_SWAP, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @HPAGE_PMD_NR, align 4
  %16 = call i32 @get_swap_pages(i32 1, %struct.TYPE_6__* %2, i32 %15)
  br label %17

17:                                               ; preds = %14, %10
  br label %83

18:                                               ; preds = %1
  %19 = call %struct.swap_slots_cache* @raw_cpu_ptr(i32* @swp_slots)
  store %struct.swap_slots_cache* %19, %struct.swap_slots_cache** %5, align 8
  %20 = call i64 (...) @check_cache_active()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %24 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %27
  %33 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %34 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %37 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %69, %40
  %42 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %43 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %48 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %51 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %54
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %4, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = bitcast %struct.TYPE_6__* %2 to i8*
  %58 = bitcast %struct.TYPE_6__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %62 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  br label %71

65:                                               ; preds = %41
  %66 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %67 = call i64 @refill_swap_slots_cache(%struct.swap_slots_cache* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %41

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %5, align 8
  %74 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %83

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %27
  %82 = call i32 @get_swap_pages(i32 1, %struct.TYPE_6__* %2, i32 1)
  br label %83

83:                                               ; preds = %81, %79, %17
  %84 = load %struct.page*, %struct.page** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @mem_cgroup_try_charge_swap(%struct.page* %84, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.page*, %struct.page** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @put_swap_page(%struct.page* %90, i64 %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %83
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  ret i64 %97
}

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @get_swap_pages(i32, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.swap_slots_cache* @raw_cpu_ptr(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @check_cache_active(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @refill_swap_slots_cache(%struct.swap_slots_cache*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @mem_cgroup_try_charge_swap(%struct.page*, i64) #1

declare dso_local i32 @put_swap_page(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
