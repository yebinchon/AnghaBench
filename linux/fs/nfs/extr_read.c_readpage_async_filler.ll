; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_readpage_async_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_read.c_readpage_async_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.nfs_readdesc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @readpage_async_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readpage_async_filler(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_readdesc*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.nfs_readdesc*
  store %struct.nfs_readdesc* %11, %struct.nfs_readdesc** %6, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = call i32 @nfs_page_length(%struct.page* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @nfs_return_empty_page(%struct.page* %17)
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.nfs_readdesc*, %struct.nfs_readdesc** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.nfs_page* @nfs_create_request(i32 %22, %struct.page* %23, i32 0, i32 %24)
  store %struct.nfs_page* %25, %struct.nfs_page** %7, align 8
  %26 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %27 = call i64 @IS_ERR(%struct.nfs_page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %58

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @zero_user_segment(%struct.page* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.nfs_readdesc*, %struct.nfs_readdesc** %6, align 8
  %41 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %44 = call i32 @nfs_pageio_add_request(%struct.TYPE_2__* %42, %struct.nfs_page* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %39
  %47 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %48 = call i32 @nfs_list_remove_request(%struct.nfs_page* %47)
  %49 = load %struct.nfs_readdesc*, %struct.nfs_readdesc** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_readdesc, %struct.nfs_readdesc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @nfs_readpage_release(%struct.nfs_page* %54, i32 %55)
  br label %63

57:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %65

58:                                               ; preds = %29
  %59 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %60 = call i32 @PTR_ERR(%struct.nfs_page* %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i32 @unlock_page(%struct.page* %61)
  br label %63

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %57, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @nfs_return_empty_page(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_create_request(i32, %struct.page*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.TYPE_2__*, %struct.nfs_page*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_readpage_release(%struct.nfs_page*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
