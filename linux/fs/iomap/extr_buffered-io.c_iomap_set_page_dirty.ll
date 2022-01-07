; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_set_page_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_set_page_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@I_DIRTY_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_set_page_dirty(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.address_space* @page_mapping(%struct.page* %6)
  store %struct.address_space* %7, %struct.address_space** %4, align 8
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = icmp ne %struct.address_space* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @TestSetPageDirty(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @lock_page_memcg(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @TestSetPageDirty(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = load %struct.address_space*, %struct.address_space** %4, align 8
  %33 = call i32 @__set_page_dirty(%struct.page* %31, %struct.address_space* %32, i32 0)
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i32 @unlock_page_memcg(%struct.page* %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.address_space*, %struct.address_space** %4, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I_DIRTY_PAGES, align 4
  %44 = call i32 @__mark_inode_dirty(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local i32 @__set_page_dirty(%struct.page*, %struct.address_space*, i32) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

declare dso_local i32 @__mark_inode_dirty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
