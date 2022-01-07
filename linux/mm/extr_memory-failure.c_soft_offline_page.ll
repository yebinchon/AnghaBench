; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_soft_offline_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_soft_offline_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"soft_offline: %#lx page is device page\0A\00", align 1
@MF_COUNT_INCREASED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"soft offline: %#lx page already poisoned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soft_offline_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @page_to_pfn(%struct.page* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i64 @is_zone_device_page(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MF_COUNT_INCREASED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @put_page(%struct.page* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i64 @PageHWPoison(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MF_COUNT_INCREASED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @put_hwpoison_page(%struct.page* %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %26
  %44 = call i32 (...) @get_online_mems()
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @get_any_page(%struct.page* %45, i64 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = call i32 (...) @put_online_mems()
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @soft_offline_in_use_page(%struct.page* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %63

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i32 @soft_offline_free_page(%struct.page* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %40, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @is_zone_device_page(%struct.page*) #1

declare dso_local i32 @pr_debug_ratelimited(i8*, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

declare dso_local i32 @get_online_mems(...) #1

declare dso_local i32 @get_any_page(%struct.page*, i64, i32) #1

declare dso_local i32 @put_online_mems(...) #1

declare dso_local i32 @soft_offline_in_use_page(%struct.page*, i32) #1

declare dso_local i32 @soft_offline_free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
