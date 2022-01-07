; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { %struct.size_class** }
%struct.size_class = type { i32 }
%struct.zspage = type { i32 }
%struct.page = type { i32 }

@ZS_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zs_free(%struct.zs_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.zs_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zspage*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.size_class*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zs_pool* %0, %struct.zs_pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %81

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @pin_tag(i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @handle_to_obj(i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @obj_to_location(i64 %25, %struct.page** %6, i32* %8)
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = call %struct.zspage* @get_zspage(%struct.page* %27)
  store %struct.zspage* %28, %struct.zspage** %5, align 8
  %29 = load %struct.zspage*, %struct.zspage** %5, align 8
  %30 = call i32 @migrate_read_lock(%struct.zspage* %29)
  %31 = load %struct.zspage*, %struct.zspage** %5, align 8
  %32 = call i32 @get_zspage_mapping(%struct.zspage* %31, i32* %9, i32* %11)
  %33 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %34 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %33, i32 0, i32 0
  %35 = load %struct.size_class**, %struct.size_class*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.size_class*, %struct.size_class** %35, i64 %37
  %39 = load %struct.size_class*, %struct.size_class** %38, align 8
  store %struct.size_class* %39, %struct.size_class** %10, align 8
  %40 = load %struct.size_class*, %struct.size_class** %10, align 8
  %41 = getelementptr inbounds %struct.size_class, %struct.size_class* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.size_class*, %struct.size_class** %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @obj_free(%struct.size_class* %43, i64 %44)
  %46 = load %struct.size_class*, %struct.size_class** %10, align 8
  %47 = load %struct.zspage*, %struct.zspage** %5, align 8
  %48 = call i32 @fix_fullness_group(%struct.size_class* %46, %struct.zspage* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ZS_EMPTY, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %20
  %53 = load %struct.zspage*, %struct.zspage** %5, align 8
  %54 = call i32 @migrate_read_unlock(%struct.zspage* %53)
  br label %72

55:                                               ; preds = %20
  %56 = load %struct.zspage*, %struct.zspage** %5, align 8
  %57 = call i32 @is_zspage_isolated(%struct.zspage* %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.zspage*, %struct.zspage** %5, align 8
  %59 = call i32 @migrate_read_unlock(%struct.zspage* %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %68 = load %struct.size_class*, %struct.size_class** %10, align 8
  %69 = load %struct.zspage*, %struct.zspage** %5, align 8
  %70 = call i32 @free_zspage(%struct.zs_pool* %67, %struct.size_class* %68, %struct.zspage* %69)
  br label %71

71:                                               ; preds = %66, %55
  br label %72

72:                                               ; preds = %71, %52
  %73 = load %struct.size_class*, %struct.size_class** %10, align 8
  %74 = getelementptr inbounds %struct.size_class, %struct.size_class* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @unpin_tag(i64 %76)
  %78 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @cache_free_handle(%struct.zs_pool* %78, i64 %79)
  br label %81

81:                                               ; preds = %72, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pin_tag(i64) #1

declare dso_local i64 @handle_to_obj(i64) #1

declare dso_local i32 @obj_to_location(i64, %struct.page**, i32*) #1

declare dso_local %struct.zspage* @get_zspage(%struct.page*) #1

declare dso_local i32 @migrate_read_lock(%struct.zspage*) #1

declare dso_local i32 @get_zspage_mapping(%struct.zspage*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @obj_free(%struct.size_class*, i64) #1

declare dso_local i32 @fix_fullness_group(%struct.size_class*, %struct.zspage*) #1

declare dso_local i32 @migrate_read_unlock(%struct.zspage*) #1

declare dso_local i32 @is_zspage_isolated(%struct.zspage*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @free_zspage(%struct.zs_pool*, %struct.size_class*, %struct.zspage*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unpin_tag(i64) #1

declare dso_local i32 @cache_free_handle(%struct.zs_pool*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
