; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_move_freepages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_move_freepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, %struct.page*, %struct.page*, i32, i32*)* @move_freepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_freepages(%struct.zone* %0, %struct.page* %1, %struct.page* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %14, %struct.page** %11, align 8
  br label %15

15:                                               ; preds = %49, %46, %24, %5
  %16 = load %struct.page*, %struct.page** %11, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = icmp ule %struct.page* %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %11, align 8
  %21 = call i32 @page_to_pfn(%struct.page* %20)
  %22 = call i32 @pfn_valid_within(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.page*, %struct.page** %11, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 1
  store %struct.page* %26, %struct.page** %11, align 8
  br label %15

27:                                               ; preds = %19
  %28 = load %struct.page*, %struct.page** %11, align 8
  %29 = call i32 @PageBuddy(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.page*, %struct.page** %11, align 8
  %36 = call i64 @PageLRU(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load %struct.page*, %struct.page** %11, align 8
  %40 = call i64 @__PageMovable(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %42, %38, %31
  %47 = load %struct.page*, %struct.page** %11, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 1
  store %struct.page* %48, %struct.page** %11, align 8
  br label %15

49:                                               ; preds = %27
  %50 = load %struct.page*, %struct.page** %11, align 8
  %51 = call i64 @page_to_nid(%struct.page* %50)
  %52 = load %struct.zone*, %struct.zone** %6, align 8
  %53 = call i64 @zone_to_nid(%struct.zone* %52)
  %54 = icmp ne i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = load %struct.page*, %struct.page** %11, align 8
  %57 = call i32 @VM_BUG_ON_PAGE(i32 %55, %struct.page* %56)
  %58 = load %struct.page*, %struct.page** %11, align 8
  %59 = call %struct.zone* @page_zone(%struct.page* %58)
  %60 = load %struct.zone*, %struct.zone** %6, align 8
  %61 = icmp ne %struct.zone* %59, %60
  %62 = zext i1 %61 to i32
  %63 = load %struct.page*, %struct.page** %11, align 8
  %64 = call i32 @VM_BUG_ON_PAGE(i32 %62, %struct.page* %63)
  %65 = load %struct.page*, %struct.page** %11, align 8
  %66 = call i32 @page_order(%struct.page* %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.page*, %struct.page** %11, align 8
  %68 = load %struct.zone*, %struct.zone** %6, align 8
  %69 = getelementptr inbounds %struct.zone, %struct.zone* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @move_to_free_area(%struct.page* %67, i32* %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.page*, %struct.page** %11, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.page, %struct.page* %78, i64 %79
  store %struct.page* %80, %struct.page** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %15

85:                                               ; preds = %15
  %86 = load i32, i32* %13, align 4
  ret i32 %86
}

declare dso_local i32 @pfn_valid_within(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @PageBuddy(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i64 @__PageMovable(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

declare dso_local i64 @zone_to_nid(%struct.zone*) #1

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @page_order(%struct.page*) #1

declare dso_local i32 @move_to_free_area(%struct.page*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
