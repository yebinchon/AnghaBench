; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_write_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_send_write_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_args = type { %struct.TYPE_8__, %struct.fuse_args_pages }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.fuse_args_pages = type { i32, %struct.page**, %struct.TYPE_6__*, i32 }
%struct.page = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.kiocb = type { %struct.file* }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn* }
%struct.fuse_conn = type { i32 }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_io_args*, %struct.kiocb*, %struct.inode*, i32, i64)* @fuse_send_write_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_send_write_pages(%struct.fuse_io_args* %0, %struct.kiocb* %1, %struct.inode* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.fuse_io_args*, align 8
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.fuse_args_pages*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.fuse_file*, align 8
  %14 = alloca %struct.fuse_conn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  store %struct.fuse_io_args* %0, %struct.fuse_io_args** %6, align 8
  store %struct.kiocb* %1, %struct.kiocb** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %19 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %20 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %19, i32 0, i32 1
  store %struct.fuse_args_pages* %20, %struct.fuse_args_pages** %11, align 8
  %21 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load %struct.file*, %struct.file** %22, align 8
  store %struct.file* %23, %struct.file** %12, align 8
  %24 = load %struct.file*, %struct.file** %12, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.fuse_file*, %struct.fuse_file** %25, align 8
  store %struct.fuse_file* %26, %struct.fuse_file** %13, align 8
  %27 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  %28 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %27, i32 0, i32 0
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %28, align 8
  store %struct.fuse_conn* %29, %struct.fuse_conn** %14, align 8
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %48, %5
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %11, align 8
  %33 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %11, align 8
  %39 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %38, i32 0, i32 1
  %40 = load %struct.page**, %struct.page*** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page*, %struct.page** %40, i64 %42
  %44 = load %struct.page*, %struct.page** %43, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fuse_wait_on_page_writeback(%struct.inode* %37, i32 %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %16, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %53 = load %struct.fuse_file*, %struct.fuse_file** %13, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @fuse_write_args_fill(%struct.fuse_io_args* %52, %struct.fuse_file* %53, i32 %54, i64 %55)
  %57 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %58 = call i32 @fuse_write_flags(%struct.kiocb* %57)
  %59 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %60 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.fuse_conn*, %struct.fuse_conn** %14, align 8
  %64 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %11, align 8
  %65 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %64, i32 0, i32 3
  %66 = call i32 @fuse_simple_request(%struct.fuse_conn* %63, i32* %65)
  store i32 %66, i32* %17, align 4
  %67 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %11, align 8
  %68 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load %struct.fuse_io_args*, %struct.fuse_io_args** %6, align 8
  %74 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %124, %51
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %11, align 8
  %81 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %78
  %85 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %11, align 8
  %86 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %85, i32 0, i32 1
  %87 = load %struct.page**, %struct.page*** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %89
  %91 = load %struct.page*, %struct.page** %90, align 8
  store %struct.page* %91, %struct.page** %18, align 8
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.page*, %struct.page** %18, align 8
  %103 = call i32 @SetPageUptodate(%struct.page* %102)
  br label %104

104:                                              ; preds = %101, %97, %94, %84
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = sub i64 %106, %108
  %110 = icmp ugt i64 %105, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i32, i32* %15, align 4
  %114 = zext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = load i64, i64* %10, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %10, align 8
  br label %119

118:                                              ; preds = %104
  store i64 0, i64* %10, align 8
  br label %119

119:                                              ; preds = %118, %111
  store i32 0, i32* %15, align 4
  %120 = load %struct.page*, %struct.page** %18, align 8
  %121 = call i32 @unlock_page(%struct.page* %120)
  %122 = load %struct.page*, %struct.page** %18, align 8
  %123 = call i32 @put_page(%struct.page* %122)
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %16, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %78

127:                                              ; preds = %78
  %128 = load i32, i32* %17, align 4
  ret i32 %128
}

declare dso_local i32 @fuse_wait_on_page_writeback(%struct.inode*, i32) #1

declare dso_local i32 @fuse_write_args_fill(%struct.fuse_io_args*, %struct.fuse_file*, i32, i64) #1

declare dso_local i32 @fuse_write_flags(%struct.kiocb*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
