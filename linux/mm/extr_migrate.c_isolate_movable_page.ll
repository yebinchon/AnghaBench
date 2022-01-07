; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_isolate_movable_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_isolate_movable_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*, i32)* }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isolate_movable_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @get_page_unless_zero(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @__PageMovable(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %72

24:                                               ; preds = %15
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @trylock_page(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %72

33:                                               ; preds = %24
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @PageMovable(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i64 @PageIsolated(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  br label %69

42:                                               ; preds = %37
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call %struct.address_space* @page_mapping(%struct.page* %43)
  store %struct.address_space* %44, %struct.address_space** %6, align 8
  %45 = load %struct.address_space*, %struct.address_space** %6, align 8
  %46 = icmp ne %struct.address_space* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = call i32 @VM_BUG_ON_PAGE(i32 %48, %struct.page* %49)
  %51 = load %struct.address_space*, %struct.address_space** %6, align 8
  %52 = getelementptr inbounds %struct.address_space, %struct.address_space* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %54, align 8
  %56 = load %struct.page*, %struct.page** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 %55(%struct.page* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %42
  br label %69

61:                                               ; preds = %42
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i64 @PageIsolated(%struct.page* %62)
  %64 = call i32 @WARN_ON_ONCE(i64 %63)
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = call i32 @__SetPageIsolated(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %4, align 8
  %68 = call i32 @unlock_page(%struct.page* %67)
  store i32 0, i32* %3, align 4
  br label %78

69:                                               ; preds = %60, %41
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %69, %32, %23
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = call i32 @put_page(%struct.page* %73)
  br label %75

75:                                               ; preds = %72, %14
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %61
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @__PageMovable(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @PageMovable(%struct.page*) #1

declare dso_local i64 @PageIsolated(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @__SetPageIsolated(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
