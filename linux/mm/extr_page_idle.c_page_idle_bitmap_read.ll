; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_idle.c_page_idle_bitmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_idle.c_page_idle_bitmap_read.c"
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
@BITMAP_CHUNK_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @page_idle_bitmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_idle_bitmap_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
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
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %14, align 8
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
  br label %114

33:                                               ; preds = %25
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @BITS_PER_BYTE, align 8
  %36 = mul i64 %34, %35
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @max_pfn, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %114

41:                                               ; preds = %33
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @BITS_PER_BYTE, align 8
  %45 = mul i64 %43, %44
  %46 = add i64 %42, %45
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* @max_pfn, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @max_pfn, align 8
  store i64 %51, i64* %17, align 8
  br label %52

52:                                               ; preds = %50, %41
  br label %53

53:                                               ; preds = %103, %52
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %53
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* @BITMAP_CHUNK_BITS, align 8
  %60 = urem i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i64*, i64** %14, align 8
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i64, i64* %16, align 8
  %68 = call %struct.page* @page_idle_get_page(i64 %67)
  store %struct.page* %68, %struct.page** %15, align 8
  %69 = load %struct.page*, %struct.page** %15, align 8
  %70 = icmp ne %struct.page* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load %struct.page*, %struct.page** %15, align 8
  %73 = call i64 @page_is_idle(%struct.page* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %15, align 8
  %77 = call i32 @page_idle_clear_pte_refs(%struct.page* %76)
  %78 = load %struct.page*, %struct.page** %15, align 8
  %79 = call i64 @page_is_idle(%struct.page* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, i32* %18, align 4
  %83 = zext i32 %82 to i64
  %84 = shl i64 1, %83
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %85, align 8
  %87 = or i64 %86, %84
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %81, %75
  br label %89

89:                                               ; preds = %88, %71
  %90 = load %struct.page*, %struct.page** %15, align 8
  %91 = call i32 @put_page(%struct.page* %90)
  br label %92

92:                                               ; preds = %89, %66
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @BITMAP_CHUNK_BITS, align 8
  %96 = sub i64 %95, 1
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i64*, i64** %14, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %14, align 8
  br label %101

101:                                              ; preds = %98, %92
  %102 = call i32 (...) @cond_resched()
  br label %103

103:                                              ; preds = %101
  %104 = load i64, i64* %16, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %16, align 8
  br label %53

106:                                              ; preds = %53
  %107 = load i64*, i64** %14, align 8
  %108 = bitcast i64* %107 to i8*
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106, %40, %30
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local %struct.page* @page_idle_get_page(i64) #1

declare dso_local i64 @page_is_idle(%struct.page*) #1

declare dso_local i32 @page_idle_clear_pte_refs(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
