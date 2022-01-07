; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { i32, %struct.size_class** }
%struct.size_class = type { i32, i32, i32, i32 }
%struct.zspage = type { i32 }

@ZS_MAX_ALLOC_SIZE = common dso_local global i64 0, align 8
@ZS_HANDLE_SIZE = common dso_local global i64 0, align 8
@OBJ_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zs_malloc(%struct.zs_pool* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.zs_pool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.size_class*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.zspage*, align 8
  store %struct.zs_pool* %0, %struct.zs_pool** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @ZS_MAX_ALLOC_SIZE, align 8
  %18 = icmp ugt i64 %16, %17
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %123

25:                                               ; preds = %19
  %26 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @cache_alloc_handle(%struct.zs_pool* %26, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i64 0, i64* %4, align 8
  br label %123

32:                                               ; preds = %25
  %33 = load i64, i64* @ZS_HANDLE_SIZE, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %37 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %36, i32 0, i32 1
  %38 = load %struct.size_class**, %struct.size_class*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @get_size_class_index(i64 %39)
  %41 = getelementptr inbounds %struct.size_class*, %struct.size_class** %38, i64 %40
  %42 = load %struct.size_class*, %struct.size_class** %41, align 8
  store %struct.size_class* %42, %struct.size_class** %10, align 8
  %43 = load %struct.size_class*, %struct.size_class** %10, align 8
  %44 = getelementptr inbounds %struct.size_class, %struct.size_class* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.size_class*, %struct.size_class** %10, align 8
  %47 = call %struct.zspage* @find_get_zspage(%struct.size_class* %46)
  store %struct.zspage* %47, %struct.zspage** %12, align 8
  %48 = load %struct.zspage*, %struct.zspage** %12, align 8
  %49 = call i64 @likely(%struct.zspage* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %32
  %52 = load %struct.size_class*, %struct.size_class** %10, align 8
  %53 = load %struct.zspage*, %struct.zspage** %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @obj_malloc(%struct.size_class* %52, %struct.zspage* %53, i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.size_class*, %struct.size_class** %10, align 8
  %57 = load %struct.zspage*, %struct.zspage** %12, align 8
  %58 = call i32 @fix_fullness_group(%struct.size_class* %56, %struct.zspage* %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @record_obj(i64 %59, i64 %60)
  %62 = load %struct.size_class*, %struct.size_class** %10, align 8
  %63 = getelementptr inbounds %struct.size_class, %struct.size_class* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %4, align 8
  br label %123

66:                                               ; preds = %32
  %67 = load %struct.size_class*, %struct.size_class** %10, align 8
  %68 = getelementptr inbounds %struct.size_class, %struct.size_class* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %71 = load %struct.size_class*, %struct.size_class** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.zspage* @alloc_zspage(%struct.zs_pool* %70, %struct.size_class* %71, i32 %72)
  store %struct.zspage* %73, %struct.zspage** %12, align 8
  %74 = load %struct.zspage*, %struct.zspage** %12, align 8
  %75 = icmp ne %struct.zspage* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %66
  %77 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @cache_free_handle(%struct.zs_pool* %77, i64 %78)
  store i64 0, i64* %4, align 8
  br label %123

80:                                               ; preds = %66
  %81 = load %struct.size_class*, %struct.size_class** %10, align 8
  %82 = getelementptr inbounds %struct.size_class, %struct.size_class* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.size_class*, %struct.size_class** %10, align 8
  %85 = load %struct.zspage*, %struct.zspage** %12, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @obj_malloc(%struct.size_class* %84, %struct.zspage* %85, i64 %86)
  store i64 %87, i64* %9, align 8
  %88 = load %struct.size_class*, %struct.size_class** %10, align 8
  %89 = load %struct.zspage*, %struct.zspage** %12, align 8
  %90 = call i32 @get_fullness_group(%struct.size_class* %88, %struct.zspage* %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.size_class*, %struct.size_class** %10, align 8
  %92 = load %struct.zspage*, %struct.zspage** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @insert_zspage(%struct.size_class* %91, %struct.zspage* %92, i32 %93)
  %95 = load %struct.zspage*, %struct.zspage** %12, align 8
  %96 = load %struct.size_class*, %struct.size_class** %10, align 8
  %97 = getelementptr inbounds %struct.size_class, %struct.size_class* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @set_zspage_mapping(%struct.zspage* %95, i32 %98, i32 %99)
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @record_obj(i64 %101, i64 %102)
  %104 = load %struct.size_class*, %struct.size_class** %10, align 8
  %105 = getelementptr inbounds %struct.size_class, %struct.size_class* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %108 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %107, i32 0, i32 0
  %109 = call i32 @atomic_long_add(i32 %106, i32* %108)
  %110 = load %struct.size_class*, %struct.size_class** %10, align 8
  %111 = load i32, i32* @OBJ_ALLOCATED, align 4
  %112 = load %struct.size_class*, %struct.size_class** %10, align 8
  %113 = getelementptr inbounds %struct.size_class, %struct.size_class* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @zs_stat_inc(%struct.size_class* %110, i32 %111, i32 %114)
  %116 = load %struct.zs_pool*, %struct.zs_pool** %5, align 8
  %117 = load %struct.zspage*, %struct.zspage** %12, align 8
  %118 = call i32 @SetZsPageMovable(%struct.zs_pool* %116, %struct.zspage* %117)
  %119 = load %struct.size_class*, %struct.size_class** %10, align 8
  %120 = getelementptr inbounds %struct.size_class, %struct.size_class* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %4, align 8
  br label %123

123:                                              ; preds = %80, %76, %51, %31, %24
  %124 = load i64, i64* %4, align 8
  ret i64 %124
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cache_alloc_handle(%struct.zs_pool*, i32) #1

declare dso_local i64 @get_size_class_index(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zspage* @find_get_zspage(%struct.size_class*) #1

declare dso_local i64 @likely(%struct.zspage*) #1

declare dso_local i64 @obj_malloc(%struct.size_class*, %struct.zspage*, i64) #1

declare dso_local i32 @fix_fullness_group(%struct.size_class*, %struct.zspage*) #1

declare dso_local i32 @record_obj(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.zspage* @alloc_zspage(%struct.zs_pool*, %struct.size_class*, i32) #1

declare dso_local i32 @cache_free_handle(%struct.zs_pool*, i64) #1

declare dso_local i32 @get_fullness_group(%struct.size_class*, %struct.zspage*) #1

declare dso_local i32 @insert_zspage(%struct.size_class*, %struct.zspage*, i32) #1

declare dso_local i32 @set_zspage_mapping(%struct.zspage*, i32, i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @zs_stat_inc(%struct.size_class*, i32, i32) #1

declare dso_local i32 @SetZsPageMovable(%struct.zs_pool*, %struct.zspage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
