; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_next_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.inode*, %struct.list_head*, i64, i64, i64*)* @iomap_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @iomap_next_page(%struct.inode* %0, %struct.list_head* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.list_head* %1, %struct.list_head** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  br label %13

13:                                               ; preds = %44, %5
  %14 = load %struct.list_head*, %struct.list_head** %8, align 8
  %15 = call i32 @list_empty(%struct.list_head* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load %struct.list_head*, %struct.list_head** %8, align 8
  %20 = call %struct.page* @lru_to_page(%struct.list_head* %19)
  store %struct.page* %20, %struct.page** %12, align 8
  %21 = load %struct.page*, %struct.page** %12, align 8
  %22 = call i64 @page_offset(%struct.page* %21)
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %51

28:                                               ; preds = %18
  %29 = load %struct.page*, %struct.page** %12, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 1
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.page*, %struct.page** %12, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call i32 @add_to_page_cache_lru(%struct.page* %32, i32 %35, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %28
  %43 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %43, %struct.page** %6, align 8
  br label %52

44:                                               ; preds = %28
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i32 @put_page(%struct.page* %49)
  br label %13

51:                                               ; preds = %27, %13
  store %struct.page* null, %struct.page** %6, align 8
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %53
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
