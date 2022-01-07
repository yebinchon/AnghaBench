; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_write_full_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_write_full_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@end_buffer_async_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32*, %struct.writeback_control*)* @gfs2_write_full_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_full_page(%struct.page* %0, i32* %1, %struct.writeback_control* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.writeback_control* %2, %struct.writeback_control** %6, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @i_size_read(%struct.inode* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @zero_user_segment(%struct.page* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31, %3
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %44 = load i32, i32* @end_buffer_async_write, align 4
  %45 = call i32 @__block_write_full_page(%struct.inode* %40, %struct.page* %41, i32* %42, %struct.writeback_control* %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @__block_write_full_page(%struct.inode*, %struct.page*, i32*, %struct.writeback_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
