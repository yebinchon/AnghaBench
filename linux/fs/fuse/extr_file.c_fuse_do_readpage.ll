; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_do_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_do_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_page_desc = type { i64 }
%struct.fuse_io_args = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.fuse_page_desc*, %struct.page** }
%struct.TYPE_5__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@FUSE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @fuse_do_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_do_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_page_desc, align 8
  %10 = alloca %struct.fuse_io_args, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %18)
  store %struct.fuse_conn* %19, %struct.fuse_conn** %7, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @page_offset(%struct.page* %20)
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %9, i32 0, i32 0
  %23 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %10, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store %struct.fuse_page_desc* %9, %struct.fuse_page_desc** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store %struct.page** %5, %struct.page*** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fuse_wait_on_page_writeback(%struct.inode* %31, i32 %34)
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %37 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @FUSE_READ, align 4
  %43 = call i32 @fuse_read_args_fill(%struct.fuse_io_args* %10, %struct.file* %38, i32 %39, i64 %41, i32 %42)
  %44 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %45 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %10, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i64 @fuse_simple_request(%struct.fuse_conn* %44, %struct.TYPE_5__* %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i64, i64* %11, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %67

53:                                               ; preds = %2
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %10, i32 0, i32 0
  %63 = call i32 @fuse_short_read(%struct.inode* %59, i32 %60, i64 %61, %struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i32 @SetPageUptodate(%struct.page* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @fuse_wait_on_page_writeback(%struct.inode*, i32) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_read_args_fill(%struct.fuse_io_args*, %struct.file*, i32, i64, i32) #1

declare dso_local i64 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_5__*) #1

declare dso_local i32 @fuse_short_read(%struct.inode*, i32, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
