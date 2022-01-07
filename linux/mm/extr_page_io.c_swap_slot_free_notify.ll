; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_slot_free_notify.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_swap_slot_free_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.swap_info_struct = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.gendisk* }
%struct.gendisk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i64)* }
%struct.TYPE_6__ = type { i32 }

@SWP_BLKDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @swap_slot_free_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_slot_free_notify(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @PageSwapCache(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call %struct.swap_info_struct* @page_swap_info(%struct.page* %16)
  store %struct.swap_info_struct* %17, %struct.swap_info_struct** %3, align 8
  %18 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %19 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SWP_BLKDEV, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %56

25:                                               ; preds = %15
  %26 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %27 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.gendisk*, %struct.gendisk** %29, align 8
  store %struct.gendisk* %30, %struct.gendisk** %4, align 8
  %31 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %32 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_7__*, i64)*, i32 (%struct.TYPE_7__*, i64)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_7__*, i64)* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %25
  %38 = load %struct.page*, %struct.page** %2, align 8
  %39 = call i32 @page_private(%struct.page* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @swp_offset(i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load %struct.page*, %struct.page** %2, align 8
  %45 = call i32 @SetPageDirty(%struct.page* %44)
  %46 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %47 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_7__*, i64)*, i32 (%struct.TYPE_7__*, i64)** %49, align 8
  %51 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %52 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 %50(%struct.TYPE_7__* %53, i64 %54)
  br label %56

56:                                               ; preds = %14, %24, %37, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local %struct.swap_info_struct* @page_swap_info(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i64 @swp_offset(i32) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
