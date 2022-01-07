; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_putback_movable_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_putback_movable_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putback_movable_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call i32 @PageLocked(%struct.page* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @VM_BUG_ON_PAGE(i32 %8, %struct.page* %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @PageMovable(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @VM_BUG_ON_PAGE(i32 %15, %struct.page* %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @PageIsolated(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @VM_BUG_ON_PAGE(i32 %22, %struct.page* %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call %struct.address_space* @page_mapping(%struct.page* %25)
  store %struct.address_space* %26, %struct.address_space** %3, align 8
  %27 = load %struct.address_space*, %struct.address_space** %3, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.page*)*, i32 (%struct.page*)** %30, align 8
  %32 = load %struct.page*, %struct.page** %2, align 8
  %33 = call i32 %31(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %2, align 8
  %35 = call i32 @__ClearPageIsolated(%struct.page* %34)
  ret void
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageMovable(%struct.page*) #1

declare dso_local i32 @PageIsolated(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @__ClearPageIsolated(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
