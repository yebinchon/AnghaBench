; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir_uncached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.dir_context = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_io_args = type { %struct.fuse_args_pages }
%struct.fuse_args_pages = type { i32, %struct.TYPE_2__, %struct.fuse_page_desc*, %struct.page** }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_page_desc = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FUSE_READDIRPLUS = common dso_local global i32 0, align 4
@FUSE_READDIR = common dso_local global i32 0, align 4
@FOPEN_CACHE_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @fuse_readdir_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_readdir_uncached(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca %struct.fuse_io_args, align 8
  %12 = alloca %struct.fuse_args_pages*, align 8
  %13 = alloca %struct.fuse_page_desc, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fuse_file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %19)
  store %struct.fuse_conn* %20, %struct.fuse_conn** %10, align 8
  %21 = bitcast %struct.fuse_io_args* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.fuse_io_args, %struct.fuse_io_args* %11, i32 0, i32 0
  store %struct.fuse_args_pages* %22, %struct.fuse_args_pages** %12, align 8
  %23 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %13, i32 0, i32 0
  %24 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %24, i32* %23, align 4
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.page* @alloc_page(i32 %25)
  store %struct.page* %26, %struct.page** %8, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %35 = call i32 @fuse_use_readdirplus(%struct.inode* %33, %struct.dir_context* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %12, align 8
  %37 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %12, align 8
  %40 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %12, align 8
  %42 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %41, i32 0, i32 3
  store %struct.page** %8, %struct.page*** %42, align 8
  %43 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %12, align 8
  %44 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %43, i32 0, i32 2
  store %struct.fuse_page_desc* %13, %struct.fuse_page_desc** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %32
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %49 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %48)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %52 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* @FUSE_READDIRPLUS, align 4
  %56 = call i32 @fuse_read_args_fill(%struct.fuse_io_args* %11, %struct.file* %50, i32 %53, i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %32
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %60 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @FUSE_READDIR, align 4
  %64 = call i32 @fuse_read_args_fill(%struct.fuse_io_args* %11, %struct.file* %58, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %47
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = call i32 @fuse_lock_inode(%struct.inode* %66)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %69 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %12, align 8
  %70 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %69, i32 0, i32 1
  %71 = call i64 @fuse_simple_request(%struct.fuse_conn* %68, %struct.TYPE_2__* %70)
  store i64 %71, i64* %7, align 8
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @fuse_unlock_inode(%struct.inode* %72, i32 %73)
  %75 = load i64, i64* %7, align 8
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %65
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %77
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load %struct.fuse_file*, %struct.fuse_file** %82, align 8
  store %struct.fuse_file* %83, %struct.fuse_file** %16, align 8
  %84 = load %struct.fuse_file*, %struct.fuse_file** %16, align 8
  %85 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FOPEN_CACHE_DIR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.file*, %struct.file** %4, align 8
  %92 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %93 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fuse_readdir_cache_end(%struct.file* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %80
  br label %116

97:                                               ; preds = %77
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.page*, %struct.page** %8, align 8
  %102 = call i32 @page_address(%struct.page* %101)
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.file*, %struct.file** %4, align 8
  %105 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i64 @parse_dirplusfile(i32 %102, i64 %103, %struct.file* %104, %struct.dir_context* %105, i32 %106)
  store i64 %107, i64* %7, align 8
  br label %115

108:                                              ; preds = %97
  %109 = load %struct.page*, %struct.page** %8, align 8
  %110 = call i32 @page_address(%struct.page* %109)
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.file*, %struct.file** %4, align 8
  %113 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %114 = call i64 @parse_dirfile(i32 %110, i64 %111, %struct.file* %112, %struct.dir_context* %113)
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %108, %100
  br label %116

116:                                              ; preds = %115, %96
  br label %117

117:                                              ; preds = %116, %65
  %118 = load %struct.page*, %struct.page** %8, align 8
  %119 = call i32 @__free_page(%struct.page* %118)
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = call i32 @fuse_invalidate_atime(%struct.inode* %120)
  %122 = load i64, i64* %7, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %29
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @fuse_use_readdirplus(%struct.inode*, %struct.dir_context*) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_read_args_fill(%struct.fuse_io_args*, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @fuse_lock_inode(%struct.inode*) #1

declare dso_local i64 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_2__*) #1

declare dso_local i32 @fuse_unlock_inode(%struct.inode*, i32) #1

declare dso_local i32 @fuse_readdir_cache_end(%struct.file*, i32) #1

declare dso_local i64 @parse_dirplusfile(i32, i64, %struct.file*, %struct.dir_context*, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i64 @parse_dirfile(i32, i64, %struct.file*, %struct.dir_context*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @fuse_invalidate_atime(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
