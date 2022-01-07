; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_obj_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_obj_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_class = type { i32 }
%struct.link_free = type { i32 }
%struct.zspage = type { i32 }
%struct.page = type { i32 }

@OBJ_ALLOCATED_TAG = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@OBJ_TAG_BITS = common dso_local global i32 0, align 4
@OBJ_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.size_class*, i64)* @obj_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obj_free(%struct.size_class* %0, i64 %1) #0 {
  %3 = alloca %struct.size_class*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.link_free*, align 8
  %6 = alloca %struct.zspage*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.size_class* %0, %struct.size_class** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* @OBJ_ALLOCATED_TAG, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @obj_to_location(i64 %15, %struct.page** %7, i32* %9)
  %17 = load %struct.size_class*, %struct.size_class** %3, align 8
  %18 = getelementptr inbounds %struct.size_class, %struct.size_class* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call %struct.zspage* @get_zspage(%struct.page* %26)
  store %struct.zspage* %27, %struct.zspage** %6, align 8
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i8* @kmap_atomic(%struct.page* %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = bitcast i8* %32 to %struct.link_free*
  store %struct.link_free* %33, %struct.link_free** %5, align 8
  %34 = load %struct.zspage*, %struct.zspage** %6, align 8
  %35 = call i32 @get_freeobj(%struct.zspage* %34)
  %36 = load i32, i32* @OBJ_TAG_BITS, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.link_free*, %struct.link_free** %5, align 8
  %39 = getelementptr inbounds %struct.link_free, %struct.link_free* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @kunmap_atomic(i8* %40)
  %42 = load %struct.zspage*, %struct.zspage** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @set_freeobj(%struct.zspage* %42, i32 %43)
  %45 = load %struct.zspage*, %struct.zspage** %6, align 8
  %46 = call i32 @mod_zspage_inuse(%struct.zspage* %45, i32 -1)
  %47 = load %struct.size_class*, %struct.size_class** %3, align 8
  %48 = load i32, i32* @OBJ_USED, align 4
  %49 = call i32 @zs_stat_dec(%struct.size_class* %47, i32 %48, i32 1)
  ret void
}

declare dso_local i32 @obj_to_location(i64, %struct.page**, i32*) #1

declare dso_local %struct.zspage* @get_zspage(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @get_freeobj(%struct.zspage*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @set_freeobj(%struct.zspage*, i32) #1

declare dso_local i32 @mod_zspage_inuse(%struct.zspage*, i32) #1

declare dso_local i32 @zs_stat_dec(%struct.size_class*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
