; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_set_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_set_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.swap_info_struct = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.page*)* }

@SWP_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_set_page_dirty(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.swap_info_struct* @page_swap_info(%struct.page* %6)
  store %struct.swap_info_struct* %7, %struct.swap_info_struct** %4, align 8
  %8 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %9 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SWP_FS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %16 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.address_space*, %struct.address_space** %18, align 8
  store %struct.address_space* %19, %struct.address_space** %5, align 8
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @PageSwapCache(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @VM_BUG_ON_PAGE(i32 %24, %struct.page* %25)
  %27 = load %struct.address_space*, %struct.address_space** %5, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.page*)*, i32 (%struct.page*)** %30, align 8
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 %31(%struct.page* %32)
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i32 @__set_page_dirty_no_writeback(%struct.page* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.swap_info_struct* @page_swap_info(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @__set_page_dirty_no_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
