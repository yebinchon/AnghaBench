; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_copy_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_copy_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.hstate = type { i32 }

@MAX_ORDER_NR_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*)* @copy_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_huge_page(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hstate*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @PageHuge(%struct.page* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call %struct.hstate* @page_hstate(%struct.page* %12)
  store %struct.hstate* %13, %struct.hstate** %7, align 8
  %14 = load %struct.hstate*, %struct.hstate** %7, align 8
  %15 = call i32 @pages_per_huge_page(%struct.hstate* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MAX_ORDER_NR_PAGES, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @__copy_gigantic_page(%struct.page* %23, %struct.page* %24, i32 %25)
  br label %56

27:                                               ; preds = %11
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @PageTransHuge(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @hpage_nr_pages(%struct.page* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %27
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = call i32 (...) @cond_resched()
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.page, %struct.page* %44, i64 %46
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page, %struct.page* %48, i64 %50
  %52 = call i32 @copy_highpage(%struct.page* %47, %struct.page* %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %38

56:                                               ; preds = %22, %38
  ret void
}

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local %struct.hstate* @page_hstate(%struct.page*) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__copy_gigantic_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
