; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c___set_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c___set_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.address_space = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_page_dirty(%struct.page* %0, %struct.address_space* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.address_space*, %struct.address_space** %5, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @xa_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @PageUptodate(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = load %struct.address_space*, %struct.address_space** %5, align 8
  %30 = call i32 @account_page_dirtied(%struct.page* %28, %struct.address_space* %29)
  %31 = load %struct.address_space*, %struct.address_space** %5, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 0
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @page_index(%struct.page* %33)
  %35 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %36 = call i32 @__xa_set_mark(i32* %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %24, %3
  %38 = load %struct.address_space*, %struct.address_space** %5, align 8
  %39 = getelementptr inbounds %struct.address_space, %struct.address_space* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @xa_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @account_page_dirtied(%struct.page*, %struct.address_space*) #1

declare dso_local i32 @__xa_set_mark(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
