; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_nfs_readpage_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }
%struct.nfs_pageio_descriptor = type { i64, i32, %struct.nfs_pgio_mirror* }
%struct.nfs_pgio_mirror = type { i64 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@nfs_async_read_completion_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_readpage_async(%struct.nfs_open_context* %0, %struct.inode* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.nfs_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_pageio_descriptor, align 8
  %11 = alloca %struct.nfs_pgio_mirror*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = call i32 @nfs_page_length(%struct.page* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call i32 @nfs_return_empty_page(%struct.page* %17)
  store i32 %18, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context* %20, %struct.page* %21, i32 0, i32 %22)
  store %struct.nfs_page* %23, %struct.nfs_page** %8, align 8
  %24 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %25 = call i64 @IS_ERR(%struct.nfs_page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @unlock_page(%struct.page* %28)
  %30 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %31 = call i32 @PTR_ERR(%struct.nfs_page* %30)
  store i32 %31, i32* %4, align 4
  br label %84

32:                                               ; preds = %19
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @zero_user_segment(%struct.page* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor* %10, %struct.inode* %42, i32 0, i32* @nfs_async_read_completion_ops)
  %44 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %45 = call i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %10, %struct.nfs_page* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %49 = call i32 @nfs_list_remove_request(%struct.nfs_page* %48)
  %50 = load %struct.nfs_page*, %struct.nfs_page** %8, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @nfs_readpage_release(%struct.nfs_page* %50, i64 %52)
  br label %54

54:                                               ; preds = %47, %41
  %55 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %10)
  %56 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON_ONCE(i32 %59)
  %61 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 2
  %62 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %61, align 8
  %63 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %62, i64 0
  store %struct.nfs_pgio_mirror* %63, %struct.nfs_pgio_mirror** %11, align 8
  %64 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %11, align 8
  %65 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %54
  %78 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  br label %81

80:                                               ; preds = %54
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i64 [ %79, %77 ], [ 0, %80 ]
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %27, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @nfs_return_empty_page(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_create_request(%struct.nfs_open_context*, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_readpage_release(%struct.nfs_page*, i64) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
