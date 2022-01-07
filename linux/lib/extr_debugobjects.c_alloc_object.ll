; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_alloc_object.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_debugobjects.c_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_obj = type { i32, i64, i32, %struct.debug_obj_descr*, i8* }
%struct.debug_bucket = type { i32 }
%struct.debug_obj_descr = type { i32 }
%struct.debug_percpu_free = type { i32, i32 }

@percpu_obj_pool = common dso_local global i32 0, align 4
@obj_cache = common dso_local global i32 0, align 4
@pool_lock = common dso_local global i32 0, align 4
@obj_pool = common dso_local global i32 0, align 4
@obj_pool_used = common dso_local global i64 0, align 8
@obj_pool_free = common dso_local global i64 0, align 8
@ODEBUG_BATCH_SIZE = common dso_local global i32 0, align 4
@obj_pool_max_used = common dso_local global i64 0, align 8
@obj_pool_min_free = common dso_local global i64 0, align 8
@ODEBUG_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.debug_obj* (i8*, %struct.debug_bucket*, %struct.debug_obj_descr*)* @alloc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.debug_obj* @alloc_object(i8* %0, %struct.debug_bucket* %1, %struct.debug_obj_descr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debug_bucket*, align 8
  %6 = alloca %struct.debug_obj_descr*, align 8
  %7 = alloca %struct.debug_percpu_free*, align 8
  %8 = alloca %struct.debug_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.debug_obj*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.debug_bucket* %1, %struct.debug_bucket** %5, align 8
  store %struct.debug_obj_descr* %2, %struct.debug_obj_descr** %6, align 8
  %11 = call %struct.debug_percpu_free* @this_cpu_ptr(i32* @percpu_obj_pool)
  store %struct.debug_percpu_free* %11, %struct.debug_percpu_free** %7, align 8
  %12 = load i32, i32* @obj_cache, align 4
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %7, align 8
  %17 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %16, i32 0, i32 1
  %18 = call %struct.debug_obj* @__alloc_object(i32* %17)
  store %struct.debug_obj* %18, %struct.debug_obj** %8, align 8
  %19 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %20 = icmp ne %struct.debug_obj* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %7, align 8
  %23 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  br label %83

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = call i32 @raw_spin_lock(i32* @pool_lock)
  %29 = call %struct.debug_obj* @__alloc_object(i32* @obj_pool)
  store %struct.debug_obj* %29, %struct.debug_obj** %8, align 8
  %30 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %31 = icmp ne %struct.debug_obj* %30, null
  br i1 %31, label %32, label %81

32:                                               ; preds = %27
  %33 = load i64, i64* @obj_pool_used, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @obj_pool_used, align 8
  %35 = load i64, i64* @obj_pool_free, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* @obj_pool_free, align 8
  %37 = load i32, i32* @obj_cache, align 4
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ODEBUG_BATCH_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = call %struct.debug_obj* @__alloc_object(i32* @obj_pool)
  store %struct.debug_obj* %46, %struct.debug_obj** %10, align 8
  %47 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %48 = icmp ne %struct.debug_obj* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %67

50:                                               ; preds = %45
  %51 = load %struct.debug_obj*, %struct.debug_obj** %10, align 8
  %52 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %51, i32 0, i32 0
  %53 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %7, align 8
  %54 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %53, i32 0, i32 1
  %55 = call i32 @hlist_add_head(i32* %52, i32* %54)
  %56 = load %struct.debug_percpu_free*, %struct.debug_percpu_free** %7, align 8
  %57 = getelementptr inbounds %struct.debug_percpu_free, %struct.debug_percpu_free* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i64, i64* @obj_pool_used, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @obj_pool_used, align 8
  %62 = load i64, i64* @obj_pool_free, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* @obj_pool_free, align 8
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %41

67:                                               ; preds = %49, %41
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i64, i64* @obj_pool_used, align 8
  %70 = load i64, i64* @obj_pool_max_used, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @obj_pool_used, align 8
  store i64 %73, i64* @obj_pool_max_used, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* @obj_pool_free, align 8
  %76 = load i64, i64* @obj_pool_min_free, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @obj_pool_free, align 8
  store i64 %79, i64* @obj_pool_min_free, align 8
  br label %80

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %27
  %82 = call i32 @raw_spin_unlock(i32* @pool_lock)
  br label %83

83:                                               ; preds = %81, %21
  %84 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %85 = icmp ne %struct.debug_obj* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %89 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.debug_obj_descr*, %struct.debug_obj_descr** %6, align 8
  %91 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %92 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %91, i32 0, i32 3
  store %struct.debug_obj_descr* %90, %struct.debug_obj_descr** %92, align 8
  %93 = load i32, i32* @ODEBUG_STATE_NONE, align 4
  %94 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %95 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %97 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  %99 = getelementptr inbounds %struct.debug_obj, %struct.debug_obj* %98, i32 0, i32 0
  %100 = load %struct.debug_bucket*, %struct.debug_bucket** %5, align 8
  %101 = getelementptr inbounds %struct.debug_bucket, %struct.debug_bucket* %100, i32 0, i32 0
  %102 = call i32 @hlist_add_head(i32* %99, i32* %101)
  br label %103

103:                                              ; preds = %86, %83
  %104 = load %struct.debug_obj*, %struct.debug_obj** %8, align 8
  ret %struct.debug_obj* %104
}

declare dso_local %struct.debug_percpu_free* @this_cpu_ptr(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.debug_obj* @__alloc_object(i32*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
