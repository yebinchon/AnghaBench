; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_idle.c_page_idle_bitmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_idle.c_page_idle_bitmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.page = type { i32 }

@BITMAP_CHUNK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i64 0, align 8
@max_pfn = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BITMAP_CHUNK_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @page_idle_bitmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_idle_bitmap_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %14, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @BITMAP_CHUNK_SIZE, align 8
  %23 = urem i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @BITMAP_CHUNK_SIZE, align 8
  %28 = urem i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %105

33:                                               ; preds = %25
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @BITS_PER_BYTE, align 8
  %36 = mul i64 %34, %35
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @max_pfn, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %105

43:                                               ; preds = %33
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @BITS_PER_BYTE, align 8
  %47 = mul i64 %45, %46
  %48 = add i64 %44, %47
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @max_pfn, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* @max_pfn, align 8
  store i64 %53, i64* %17, align 8
  br label %54

54:                                               ; preds = %52, %43
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @BITMAP_CHUNK_BITS, align 8
  %62 = urem i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %18, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %18, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %59
  %71 = load i64, i64* %16, align 8
  %72 = call %struct.page* @page_idle_get_page(i64 %71)
  store %struct.page* %72, %struct.page** %15, align 8
  %73 = load %struct.page*, %struct.page** %15, align 8
  %74 = icmp ne %struct.page* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.page*, %struct.page** %15, align 8
  %77 = call i32 @page_idle_clear_pte_refs(%struct.page* %76)
  %78 = load %struct.page*, %struct.page** %15, align 8
  %79 = call i32 @set_page_idle(%struct.page* %78)
  %80 = load %struct.page*, %struct.page** %15, align 8
  %81 = call i32 @put_page(%struct.page* %80)
  br label %82

82:                                               ; preds = %75, %70
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @BITMAP_CHUNK_BITS, align 8
  %87 = sub i64 %86, 1
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %14, align 8
  br label %92

92:                                               ; preds = %89, %83
  %93 = call i32 (...) @cond_resched()
  br label %94

94:                                               ; preds = %92
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %16, align 8
  br label %55

97:                                               ; preds = %55
  %98 = load i32*, i32** %14, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = load i8*, i8** %11, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %97, %40, %30
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.page* @page_idle_get_page(i64) #1

declare dso_local i32 @page_idle_clear_pte_refs(%struct.page*) #1

declare dso_local i32 @set_page_idle(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
