; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_set_pfnblock_flags_mask.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_set_pfnblock_flags_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_PAGEBLOCK_BITS = common dso_local global i32 0, align 4
@MIGRATE_TYPES = common dso_local global i32 0, align 4
@PB_migratetype_bits = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pfnblock_flags_mask(%struct.page* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @NR_PAGEBLOCK_BITS, align 4
  %17 = icmp ne i32 %16, 4
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load i32, i32* @MIGRATE_TYPES, align 4
  %21 = load i32, i32* @PB_migratetype_bits, align 4
  %22 = shl i32 1, %21
  %23 = icmp sgt i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64* @get_pageblock_bitmap(%struct.page* %26, i64 %27)
  store i64* %28, i64** %11, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @pfn_to_bitidx(%struct.page* %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @BITS_PER_LONG, align 8
  %34 = udiv i64 %32, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* @BITS_PER_LONG, align 8
  %36 = sub i64 %35, 1
  %37 = load i64, i64* %12, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = call i32 @page_zone(%struct.page* %39)
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @zone_spans_pfn(i32 %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i32 @VM_BUG_ON_PAGE(i32 %45, %struct.page* %46)
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* @BITS_PER_LONG, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub i64 %51, %52
  %54 = sub i64 %53, 1
  %55 = load i64, i64* %10, align 8
  %56 = shl i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* @BITS_PER_LONG, align 8
  %58 = load i64, i64* %12, align 8
  %59 = sub i64 %57, %58
  %60 = sub i64 %59, 1
  %61 = load i64, i64* %7, align 8
  %62 = shl i64 %61, %60
  store i64 %62, i64* %7, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @READ_ONCE(i64 %66)
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %84, %5
  %69 = load i64*, i64** %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %10, align 8
  %75 = xor i64 %74, -1
  %76 = and i64 %73, %75
  %77 = load i64, i64* %7, align 8
  %78 = or i64 %76, %77
  %79 = call i64 @cmpxchg(i64* %71, i64 %72, i64 %78)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %86

84:                                               ; preds = %68
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %15, align 8
  br label %68

86:                                               ; preds = %83
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64* @get_pageblock_bitmap(%struct.page*, i64) #1

declare dso_local i64 @pfn_to_bitidx(%struct.page*, i64) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @zone_spans_pfn(i32, i64) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
