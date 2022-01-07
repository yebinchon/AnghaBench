; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_saveable_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_saveable_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.zone*, i64)* @saveable_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @saveable_page(%struct.zone* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @pfn_valid(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.page* null, %struct.page** %3, align 8
  br label %59

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.page* @pfn_to_online_page(i64 %12)
  store %struct.page* %13, %struct.page** %6, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call %struct.zone* @page_zone(%struct.page* %17)
  %19 = load %struct.zone*, %struct.zone** %4, align 8
  %20 = icmp ne %struct.zone* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  store %struct.page* null, %struct.page** %3, align 8
  br label %59

22:                                               ; preds = %16
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @PageHighMem(%struct.page* %23)
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i64 @swsusp_page_is_forbidden(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i64 @swsusp_page_is_free(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22
  store %struct.page* null, %struct.page** %3, align 8
  br label %59

34:                                               ; preds = %29
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = call i64 @PageOffline(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.page* null, %struct.page** %3, align 8
  br label %59

39:                                               ; preds = %34
  %40 = load %struct.page*, %struct.page** %6, align 8
  %41 = call i64 @PageReserved(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @kernel_page_present(%struct.page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @pfn_is_nosave(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store %struct.page* null, %struct.page** %3, align 8
  br label %59

52:                                               ; preds = %47, %39
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i64 @page_is_guard(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store %struct.page* null, %struct.page** %3, align 8
  br label %59

57:                                               ; preds = %52
  %58 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %58, %struct.page** %3, align 8
  br label %59

59:                                               ; preds = %57, %56, %51, %38, %33, %21, %10
  %60 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %60
}

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_online_page(i64) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i64 @swsusp_page_is_forbidden(%struct.page*) #1

declare dso_local i64 @swsusp_page_is_free(%struct.page*) #1

declare dso_local i64 @PageOffline(%struct.page*) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local i32 @kernel_page_present(%struct.page*) #1

declare dso_local i64 @pfn_is_nosave(i64) #1

declare dso_local i64 @page_is_guard(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
