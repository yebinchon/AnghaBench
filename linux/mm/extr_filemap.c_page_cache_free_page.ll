; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_cache_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_cache_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (%struct.page*)* }
%struct.page = type { i32 }

@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.page*)* @page_cache_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_cache_free_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca void (%struct.page*)*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.address_space*, %struct.address_space** %3, align 8
  %7 = getelementptr inbounds %struct.address_space, %struct.address_space* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load void (%struct.page*)*, void (%struct.page*)** %9, align 8
  store void (%struct.page*)* %10, void (%struct.page*)** %5, align 8
  %11 = load void (%struct.page*)*, void (%struct.page*)** %5, align 8
  %12 = icmp ne void (%struct.page*)* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load void (%struct.page*)*, void (%struct.page*)** %5, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  call void %14(%struct.page* %15)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i64 @PageTransHuge(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @PageHuge(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = load i32, i32* @HPAGE_PMD_NR, align 4
  %27 = call i32 @page_ref_sub(%struct.page* %25, i32 %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i64 @page_count(%struct.page* %28)
  %30 = icmp sle i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @VM_BUG_ON_PAGE(i32 %31, %struct.page* %32)
  br label %37

34:                                               ; preds = %20, %16
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @put_page(%struct.page* %35)
  br label %37

37:                                               ; preds = %34, %24
  ret void
}

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @page_ref_sub(%struct.page*, i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @page_count(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
