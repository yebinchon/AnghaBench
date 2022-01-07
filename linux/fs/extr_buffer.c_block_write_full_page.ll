; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_write_full_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_write_full_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@end_buffer_async_write = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_write_full_page(%struct.page* %0, i32* %1, %struct.writeback_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.writeback_control*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.writeback_control* %2, %struct.writeback_control** %7, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call i32 @i_size_read(%struct.inode* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %33 = load i32, i32* @end_buffer_async_write, align 4
  %34 = call i32 @__block_write_full_page(%struct.inode* %29, %struct.page* %30, i32* %31, %struct.writeback_control* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, 1
  %45 = icmp sge i64 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @do_invalidatepage(%struct.page* %50, i32 0, i32 %51)
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  store i32 0, i32* %4, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 @zero_user_segment(%struct.page* %56, i32 %57, i32 %58)
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %64 = load i32, i32* @end_buffer_async_write, align 4
  %65 = call i32 @__block_write_full_page(%struct.inode* %60, %struct.page* %61, i32* %62, %struct.writeback_control* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %55, %49, %28
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @__block_write_full_page(%struct.inode*, %struct.page*, i32*, %struct.writeback_control*, i32) #1

declare dso_local i32 @do_invalidatepage(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
