; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_unmap_object.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_unmap_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { %struct.size_class** }
%struct.size_class = type { i32 }
%struct.zspage = type { i32 }
%struct.page = type { i32 }
%struct.mapping_area = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@zs_map_area = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zs_unmap_object(%struct.zs_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.zs_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zspage*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.size_class*, align 8
  %13 = alloca %struct.mapping_area*, align 8
  %14 = alloca [2 x %struct.page*], align 16
  store %struct.zs_pool* %0, %struct.zs_pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @handle_to_obj(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @obj_to_location(i64 %17, %struct.page** %6, i32* %9)
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call %struct.zspage* @get_zspage(%struct.page* %19)
  store %struct.zspage* %20, %struct.zspage** %5, align 8
  %21 = load %struct.zspage*, %struct.zspage** %5, align 8
  %22 = call i32 @get_zspage_mapping(%struct.zspage* %21, i32* %10, i32* %11)
  %23 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %24 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %23, i32 0, i32 0
  %25 = load %struct.size_class**, %struct.size_class*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.size_class*, %struct.size_class** %25, i64 %27
  %29 = load %struct.size_class*, %struct.size_class** %28, align 8
  store %struct.size_class* %29, %struct.size_class** %12, align 8
  %30 = load %struct.size_class*, %struct.size_class** %12, align 8
  %31 = getelementptr inbounds %struct.size_class, %struct.size_class* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %32, %33
  %35 = load i32, i32* @PAGE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = call %struct.mapping_area* @this_cpu_ptr(i32* @zs_map_area)
  store %struct.mapping_area* %39, %struct.mapping_area** %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.size_class*, %struct.size_class** %12, align 8
  %42 = getelementptr inbounds %struct.size_class, %struct.size_class* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %40, %44
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.mapping_area*, %struct.mapping_area** %13, align 8
  %50 = getelementptr inbounds %struct.mapping_area, %struct.mapping_area* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @kunmap_atomic(i32 %51)
  br label %73

53:                                               ; preds = %2
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %14, i64 0, i64 0
  store %struct.page* %54, %struct.page** %55, align 16
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = call %struct.page* @get_next_page(%struct.page* %56)
  %58 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %14, i64 0, i64 1
  store %struct.page* %57, %struct.page** %58, align 8
  %59 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %14, i64 0, i64 1
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = icmp ne %struct.page* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load %struct.mapping_area*, %struct.mapping_area** %13, align 8
  %66 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %14, i64 0, i64 0
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.size_class*, %struct.size_class** %12, align 8
  %69 = getelementptr inbounds %struct.size_class, %struct.size_class* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = call i32 @__zs_unmap_object(%struct.mapping_area* %65, %struct.page** %66, i64 %67, i64 %71)
  br label %73

73:                                               ; preds = %53, %48
  %74 = load i32, i32* @zs_map_area, align 4
  %75 = call i32 @put_cpu_var(i32 %74)
  %76 = load %struct.zspage*, %struct.zspage** %5, align 8
  %77 = call i32 @migrate_read_unlock(%struct.zspage* %76)
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @unpin_tag(i64 %78)
  ret void
}

declare dso_local i64 @handle_to_obj(i64) #1

declare dso_local i32 @obj_to_location(i64, %struct.page**, i32*) #1

declare dso_local %struct.zspage* @get_zspage(%struct.page*) #1

declare dso_local i32 @get_zspage_mapping(%struct.zspage*, i32*, i32*) #1

declare dso_local %struct.mapping_area* @this_cpu_ptr(i32*) #1

declare dso_local i32 @kunmap_atomic(i32) #1

declare dso_local %struct.page* @get_next_page(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__zs_unmap_object(%struct.mapping_area*, %struct.page**, i64, i64) #1

declare dso_local i32 @put_cpu_var(i32) #1

declare dso_local i32 @migrate_read_unlock(%struct.zspage*) #1

declare dso_local i32 @unpin_tag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
