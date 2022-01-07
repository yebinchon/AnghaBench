; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hwpoison-inject.c_hwpoison_inject.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hwpoison-inject.c_hwpoison_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@hwpoison_filter_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Injecting memory failure at pfn %#lx\0A\00", align 1
@MF_COUNT_INCREASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @hwpoison_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpoison_inject(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @pfn_valid(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.page* @pfn_to_page(i64 %25)
  store %struct.page* %26, %struct.page** %7, align 8
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call %struct.page* @compound_head(%struct.page* %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = call i32 @get_hwpoison_page(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %64

33:                                               ; preds = %24
  %34 = load i32, i32* @hwpoison_filter_enable, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %55

37:                                               ; preds = %33
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = call i32 @shake_page(%struct.page* %38, i32 0)
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = call i32 @PageLRU(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = call i32 @PageHuge(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %61

48:                                               ; preds = %43, %37
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = call i32 @hwpoison_filter(%struct.page* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %61

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @MF_COUNT_INCREASED, align 4
  %60 = call i32 @memory_failure(i64 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %53, %47
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call i32 @put_hwpoison_page(%struct.page* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %55, %32, %21, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @get_hwpoison_page(%struct.page*) #1

declare dso_local i32 @shake_page(%struct.page*, i32) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @hwpoison_filter(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @memory_failure(i64, i32) #1

declare dso_local i32 @put_hwpoison_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
