; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_test_pages_isolated.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_test_pages_isolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32 }

@pageblock_nr_pages = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_pages_isolated(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.zone*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @pageblock_nr_pages, align 8
  %20 = call %struct.page* @__first_valid_page(i64 %18, i64 %19)
  store %struct.page* %20, %struct.page** %10, align 8
  %21 = load %struct.page*, %struct.page** %10, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.page*, %struct.page** %10, align 8
  %25 = call i32 @is_migrate_isolate_page(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* @pageblock_nr_pages, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %8, align 8
  br label %13

33:                                               ; preds = %27, %13
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %35, %36
  %38 = call %struct.page* @__first_valid_page(i64 %34, i64 %37)
  store %struct.page* %38, %struct.page** %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %10, align 8
  %50 = call %struct.zone* @page_zone(%struct.page* %49)
  store %struct.zone* %50, %struct.zone** %11, align 8
  %51 = load %struct.zone*, %struct.zone** %11, align 8
  %52 = getelementptr inbounds %struct.zone, %struct.zone* %51, i32 0, i32 0
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @__test_page_isolated_in_pageblock(i64 %55, i64 %56, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load %struct.zone*, %struct.zone** %11, align 8
  %60 = getelementptr inbounds %struct.zone, %struct.zone* %59, i32 0, i32 0
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @trace_test_pages_isolated(i64 %63, i64 %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %48
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  br label %74

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %45
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.page* @__first_valid_page(i64, i64) #1

declare dso_local i32 @is_migrate_isolate_page(%struct.page*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__test_page_isolated_in_pageblock(i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_test_pages_isolated(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
