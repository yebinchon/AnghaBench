; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_invalidate_complete_page2.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_invalidate_complete_page2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*)* }
%struct.page = type { %struct.address_space* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*)* @invalidate_complete_page2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_complete_page2(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %7 = load %struct.page*, %struct.page** %5, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.address_space*, %struct.address_space** %8, align 8
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = icmp ne %struct.address_space* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i64 @page_has_private(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @try_to_release_page(%struct.page* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %64

23:                                               ; preds = %17, %13
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @xa_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i64 @PageDirty(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %59

32:                                               ; preds = %23
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i64 @page_has_private(%struct.page* %33)
  %35 = call i32 @BUG_ON(i64 %34)
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i32 @__delete_from_page_cache(%struct.page* %36, i32* null)
  %38 = load %struct.address_space*, %struct.address_space** %4, align 8
  %39 = getelementptr inbounds %struct.address_space, %struct.address_space* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @xa_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.address_space*, %struct.address_space** %4, align 8
  %43 = getelementptr inbounds %struct.address_space, %struct.address_space* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.page*)*, i32 (%struct.page*)** %45, align 8
  %47 = icmp ne i32 (%struct.page*)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %32
  %49 = load %struct.address_space*, %struct.address_space** %4, align 8
  %50 = getelementptr inbounds %struct.address_space, %struct.address_space* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.page*)*, i32 (%struct.page*)** %52, align 8
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = call i32 %53(%struct.page* %54)
  br label %56

56:                                               ; preds = %48, %32
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = call i32 @put_page(%struct.page* %57)
  store i32 1, i32* %3, align 4
  br label %64

59:                                               ; preds = %31
  %60 = load %struct.address_space*, %struct.address_space** %4, align 8
  %61 = getelementptr inbounds %struct.address_space, %struct.address_space* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @xa_unlock_irqrestore(i32* %61, i64 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %56, %22, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @__delete_from_page_cache(%struct.page*, i32*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
