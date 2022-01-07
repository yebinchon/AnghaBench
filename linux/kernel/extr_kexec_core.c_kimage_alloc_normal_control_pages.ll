; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_alloc_normal_control_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_alloc_normal_control_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kimage = type { %struct.list_head }
%struct.list_head = type { i32 }

@KEXEC_CONTROL_MEMORY_GFP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@KEXEC_CONTROL_MEMORY_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.kimage*, i32)* @kimage_alloc_normal_control_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @kimage_alloc_normal_control_pages(%struct.kimage* %0, i32 %1) #0 {
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %7, align 4
  %14 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* @KEXEC_CONTROL_MEMORY_GFP, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.page* @kimage_alloc_pages(i32 %16, i32 %17)
  store %struct.page* %18, %struct.page** %6, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %55

22:                                               ; preds = %15
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i64 @page_to_boot_pfn(%struct.page* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %25, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = shl i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @KEXEC_CONTROL_MEMORY_LIMIT, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %22
  %41 = load %struct.kimage*, %struct.kimage** %3, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @kimage_is_destination_range(%struct.kimage* %41, i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %22
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = call i32 @list_add(i32* %48, %struct.list_head* %5)
  store %struct.page* null, %struct.page** %6, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.page*, %struct.page** %6, align 8
  %53 = icmp ne %struct.page* %52, null
  %54 = xor i1 %53, true
  br i1 %54, label %15, label %55

55:                                               ; preds = %51, %21
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = getelementptr inbounds %struct.page, %struct.page* %59, i32 0, i32 0
  %61 = load %struct.kimage*, %struct.kimage** %3, align 8
  %62 = getelementptr inbounds %struct.kimage, %struct.kimage* %61, i32 0, i32 0
  %63 = call i32 @list_add(i32* %60, %struct.list_head* %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = call i32 @kimage_free_page_list(%struct.list_head* %5)
  %66 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %66
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.page* @kimage_alloc_pages(i32, i32) #1

declare dso_local i64 @page_to_boot_pfn(%struct.page*) #1

declare dso_local i64 @kimage_is_destination_range(%struct.kimage*, i64, i64) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @kimage_free_page_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
