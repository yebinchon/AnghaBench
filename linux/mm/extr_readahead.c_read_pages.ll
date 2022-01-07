; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_readahead.c_read_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_readahead.c_read_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.page*)* }
%struct.page = type { i32, i32 }
%struct.file = type { i32 }
%struct.list_head = type { i32 }
%struct.blk_plug = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.file*, %struct.list_head*, i32, i32)* @read_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pages(%struct.address_space* %0, %struct.file* %1, %struct.list_head* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.blk_plug, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = call i32 @blk_start_plug(%struct.blk_plug* %11)
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load %struct.address_space*, %struct.address_space** %6, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)** %26, align 8
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = load %struct.address_space*, %struct.address_space** %6, align 8
  %30 = load %struct.list_head*, %struct.list_head** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %27(%struct.file* %28, %struct.address_space* %29, %struct.list_head* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.list_head*, %struct.list_head** %8, align 8
  %34 = call i32 @put_pages_list(%struct.list_head* %33)
  br label %70

35:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.list_head*, %struct.list_head** %8, align 8
  %42 = call %struct.page* @lru_to_page(%struct.list_head* %41)
  store %struct.page* %42, %struct.page** %14, align 8
  %43 = load %struct.page*, %struct.page** %14, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 1
  %45 = call i32 @list_del(i32* %44)
  %46 = load %struct.page*, %struct.page** %14, align 8
  %47 = load %struct.address_space*, %struct.address_space** %6, align 8
  %48 = load %struct.page*, %struct.page** %14, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @add_to_page_cache_lru(%struct.page* %46, %struct.address_space* %47, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %40
  %55 = load %struct.address_space*, %struct.address_space** %6, align 8
  %56 = getelementptr inbounds %struct.address_space, %struct.address_space* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (%struct.file*, %struct.page*)*, i32 (%struct.file*, %struct.page*)** %58, align 8
  %60 = load %struct.file*, %struct.file** %7, align 8
  %61 = load %struct.page*, %struct.page** %14, align 8
  %62 = call i32 %59(%struct.file* %60, %struct.page* %61)
  br label %63

63:                                               ; preds = %54, %40
  %64 = load %struct.page*, %struct.page** %14, align 8
  %65 = call i32 @put_page(%struct.page* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %36

69:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %22
  %71 = call i32 @blk_finish_plug(%struct.blk_plug* %11)
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @put_pages_list(%struct.list_head*) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
