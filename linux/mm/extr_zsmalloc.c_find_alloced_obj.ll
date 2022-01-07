; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_find_alloced_obj.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_find_alloced_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_class = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@OBJ_ALLOCATED_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.size_class*, %struct.page*, i32*)* @find_alloced_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_alloced_obj(%struct.size_class* %0, %struct.page* %1, i32* %2) #0 {
  %4 = alloca %struct.size_class*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.size_class* %0, %struct.size_class** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i8* @kmap_atomic(%struct.page* %14)
  store i8* %15, i8** %11, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @get_first_obj_offset(%struct.page* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.size_class*, %struct.size_class** %4, align 8
  %19 = getelementptr inbounds %struct.size_class, %struct.size_class* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %50, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = call i64 @obj_to_head(%struct.page* %30, i8* %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @OBJ_ALLOCATED_TAG, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @OBJ_ALLOCATED_TAG, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @trypin_tag(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %58

49:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.size_class*, %struct.size_class** %4, align 8
  %52 = getelementptr inbounds %struct.size_class, %struct.size_class* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %25

58:                                               ; preds = %48, %25
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @kunmap_atomic(i8* %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %10, align 8
  ret i64 %63
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @get_first_obj_offset(%struct.page*) #1

declare dso_local i64 @obj_to_head(%struct.page*, i8*) #1

declare dso_local i64 @trypin_tag(i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
