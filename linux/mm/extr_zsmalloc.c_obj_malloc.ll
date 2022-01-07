; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_obj_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_obj_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_class = type { i64 }
%struct.zspage = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.link_free = type { i32, i64 }
%struct.page = type { i32 }

@OBJ_ALLOCATED_TAG = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@OBJ_TAG_BITS = common dso_local global i32 0, align 4
@OBJ_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.size_class*, %struct.zspage*, i64)* @obj_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @obj_malloc(%struct.size_class* %0, %struct.zspage* %1, i64 %2) #0 {
  %4 = alloca %struct.size_class*, align 8
  %5 = alloca %struct.zspage*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.link_free*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.size_class* %0, %struct.size_class** %4, align 8
  store %struct.zspage* %1, %struct.zspage** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* @OBJ_ALLOCATED_TAG, align 8
  %16 = load i64, i64* %6, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %6, align 8
  %18 = load %struct.zspage*, %struct.zspage** %5, align 8
  %19 = call i64 @get_freeobj(%struct.zspage* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.size_class*, %struct.size_class** %4, align 8
  %22 = getelementptr inbounds %struct.size_class, %struct.size_class* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PAGE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %13, align 8
  %34 = load %struct.zspage*, %struct.zspage** %5, align 8
  %35 = call %struct.page* @get_first_page(%struct.zspage* %34)
  store %struct.page* %35, %struct.page** %12, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %43, %3
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = call %struct.page* @get_next_page(%struct.page* %41)
  store %struct.page* %42, %struct.page** %12, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %36

46:                                               ; preds = %36
  %47 = load %struct.page*, %struct.page** %12, align 8
  %48 = call i8* @kmap_atomic(%struct.page* %47)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = bitcast i8* %49 to %struct.link_free*
  %51 = load i64, i64* %13, align 8
  %52 = udiv i64 %51, 16
  %53 = getelementptr inbounds %struct.link_free, %struct.link_free* %50, i64 %52
  store %struct.link_free* %53, %struct.link_free** %11, align 8
  %54 = load %struct.zspage*, %struct.zspage** %5, align 8
  %55 = load %struct.link_free*, %struct.link_free** %11, align 8
  %56 = getelementptr inbounds %struct.link_free, %struct.link_free* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OBJ_TAG_BITS, align 4
  %59 = ashr i32 %57, %58
  %60 = call i32 @set_freeobj(%struct.zspage* %54, i32 %59)
  %61 = load %struct.page*, %struct.page** %12, align 8
  %62 = call i32 @PageHugeObject(%struct.page* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %46
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.link_free*, %struct.link_free** %11, align 8
  %71 = getelementptr inbounds %struct.link_free, %struct.link_free* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %78

72:                                               ; preds = %46
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.zspage*, %struct.zspage** %5, align 8
  %75 = getelementptr inbounds %struct.zspage, %struct.zspage* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @kunmap_atomic(i8* %79)
  %81 = load %struct.zspage*, %struct.zspage** %5, align 8
  %82 = call i32 @mod_zspage_inuse(%struct.zspage* %81, i32 1)
  %83 = load %struct.size_class*, %struct.size_class** %4, align 8
  %84 = load i32, i32* @OBJ_USED, align 4
  %85 = call i32 @zs_stat_inc(%struct.size_class* %83, i32 %84, i32 1)
  %86 = load %struct.page*, %struct.page** %12, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @location_to_obj(%struct.page* %86, i64 %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  ret i64 %89
}

declare dso_local i64 @get_freeobj(%struct.zspage*) #1

declare dso_local %struct.page* @get_first_page(%struct.zspage*) #1

declare dso_local %struct.page* @get_next_page(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @set_freeobj(%struct.zspage*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageHugeObject(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @mod_zspage_inuse(%struct.zspage*, i32) #1

declare dso_local i32 @zs_stat_inc(%struct.size_class*, i32, i32) #1

declare dso_local i64 @location_to_obj(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
