; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_readlink_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_readlink_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_page_desc = type { i32 }
%struct.fuse_args_pages = type { i32, %struct.TYPE_4__, %struct.fuse_page_desc*, %struct.page** }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@FUSE_READLINK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*)* @fuse_readlink_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_readlink_page(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.fuse_page_desc, align 4
  %8 = alloca %struct.fuse_args_pages, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %6, align 8
  %13 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %7, i32 0, i32 0
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 2
  store %struct.fuse_page_desc* %7, %struct.fuse_page_desc** %19, align 8
  %20 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 3
  store %struct.page** %5, %struct.page*** %20, align 8
  %21 = load i32, i32* @FUSE_READLINK, align 4
  %22 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @get_node_id(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %44 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %8, i32 0, i32 1
  %45 = call i32 @fuse_simple_request(%struct.fuse_conn* %43, %struct.TYPE_4__* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i32 @fuse_invalidate_atime(%struct.inode* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %2
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = icmp sge i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = call i8* @page_address(%struct.page* %63)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %59, %50
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_4__*) #1

declare dso_local i32 @fuse_invalidate_atime(%struct.inode*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
