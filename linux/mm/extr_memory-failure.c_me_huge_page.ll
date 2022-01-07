; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_me_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_me_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@MF_DELAYED = common dso_local global i32 0, align 4
@MF_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64)* @me_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me_huge_page(%struct.page* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.page* @compound_head(%struct.page* %9)
  store %struct.page* %10, %struct.page** %7, align 8
  %11 = load %struct.page*, %struct.page** %7, align 8
  %12 = call i32 @PageHuge(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @MF_DELAYED, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call %struct.address_space* @page_mapping(%struct.page* %17)
  store %struct.address_space* %18, %struct.address_space** %8, align 8
  %19 = load %struct.address_space*, %struct.address_space** %8, align 8
  %20 = icmp ne %struct.address_space* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.address_space*, %struct.address_space** %8, align 8
  %25 = call i32 @truncate_error_page(%struct.page* %22, i64 %23, %struct.address_space* %24)
  store i32 %25, i32* %6, align 4
  br label %41

26:                                               ; preds = %16
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i32 @unlock_page(%struct.page* %27)
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = call i64 @PageAnon(%struct.page* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.page*, %struct.page** %7, align 8
  %34 = call i32 @put_page(%struct.page* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @dissolve_free_huge_page(%struct.page* %36)
  %38 = load i32, i32* @MF_RECOVERED, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i32 @lock_page(%struct.page* %39)
  br label %41

41:                                               ; preds = %35, %21
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @truncate_error_page(%struct.page*, i64, %struct.address_space*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @dissolve_free_huge_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
