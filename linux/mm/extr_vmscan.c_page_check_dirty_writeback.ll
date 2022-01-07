; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_page_check_dirty_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_page_check_dirty_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32*, i32*)* @page_check_dirty_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_check_dirty_writeback(%struct.page* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i32 @page_is_file_cache(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i64 @PageAnon(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @PageSwapBacked(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %3
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  br label %55

22:                                               ; preds = %15, %11
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @PageDirty(%struct.page* %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @PageWriteback(%struct.page* %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @page_has_private(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %55

33:                                               ; preds = %22
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call %struct.address_space* @page_mapping(%struct.page* %34)
  store %struct.address_space* %35, %struct.address_space** %7, align 8
  %36 = load %struct.address_space*, %struct.address_space** %7, align 8
  %37 = icmp ne %struct.address_space* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.address_space*, %struct.address_space** %7, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.page*, i32*, i32*)*, i32 (%struct.page*, i32*, i32*)** %42, align 8
  %44 = icmp ne i32 (%struct.page*, i32*, i32*)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.address_space*, %struct.address_space** %7, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.page*, i32*, i32*)*, i32 (%struct.page*, i32*, i32*)** %49, align 8
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 %50(%struct.page* %51, i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %19, %32, %45, %38, %33
  ret void
}

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @page_has_private(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
