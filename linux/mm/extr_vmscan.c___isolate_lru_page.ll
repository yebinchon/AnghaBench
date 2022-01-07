; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c___isolate_lru_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c___isolate_lru_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ISOLATE_UNEVICTABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ISOLATE_ASYNC_MIGRATE = common dso_local global i32 0, align 4
@ISOLATE_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__isolate_lru_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageLRU(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i64 @PageUnevictable(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ISOLATE_UNEVICTABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %94

27:                                               ; preds = %20, %16
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ISOLATE_ASYNC_MIGRATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %73

34:                                               ; preds = %27
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i64 @PageWriteback(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %94

40:                                               ; preds = %34
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i64 @PageDirty(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i32 @trylock_page(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %94

50:                                               ; preds = %44
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = call %struct.address_space* @page_mapping(%struct.page* %51)
  store %struct.address_space* %52, %struct.address_space** %7, align 8
  %53 = load %struct.address_space*, %struct.address_space** %7, align 8
  %54 = icmp ne %struct.address_space* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.address_space*, %struct.address_space** %7, align 8
  %57 = getelementptr inbounds %struct.address_space, %struct.address_space* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %50
  %63 = phi i1 [ true, %50 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = call i32 @unlock_page(%struct.page* %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %94

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %27
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @ISOLATE_UNMAPPED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = call i64 @page_mapped(%struct.page* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %78, %73
  %85 = load %struct.page*, %struct.page** %4, align 8
  %86 = call i32 @get_page_unless_zero(%struct.page* %85)
  %87 = call i64 @likely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.page*, %struct.page** %4, align 8
  %91 = call i32 @ClearPageLRU(%struct.page* %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %82, %69, %48, %38, %25, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @ClearPageLRU(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
