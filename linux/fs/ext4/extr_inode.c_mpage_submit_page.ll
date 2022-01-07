; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_submit_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_submit_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage_da_data*, %struct.page*)* @mpage_submit_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_submit_page(%struct.mpage_da_data* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.mpage_da_data*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %12 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @clear_page_dirty_for_io(%struct.page* %17)
  %19 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %20 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @i_size_read(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %33 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ext4_verity_in_progress(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PAGE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %31, %2
  %43 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %46 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %45, i32 0, i32 2
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %50 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @ext4_bio_write_page(i32* %46, %struct.page* %47, i32 %48, %struct.TYPE_2__* %51, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %44
  %56 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %57 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %44
  %63 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %64 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @ext4_verity_in_progress(i32) #1

declare dso_local i32 @ext4_bio_write_page(i32*, %struct.page*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
