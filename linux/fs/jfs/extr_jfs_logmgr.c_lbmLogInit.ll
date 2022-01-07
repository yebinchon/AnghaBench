; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmLogInit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lbmLogInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { %struct.lbuf*, i32, i32*, i32* }
%struct.lbuf = type { i8*, %struct.lbuf*, i32, %struct.jfs_log*, %struct.page*, i64 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"lbmLogInit: log:0x%p\00", align 1
@LOGPAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@LOGPSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*)* @lbmLogInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbmLogInit(%struct.jfs_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jfs_log*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %3, align 8
  %9 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %10 = call i32 @jfs_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.jfs_log* %9)
  %11 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %12 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %14 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %16 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %15, i32 0, i32 1
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %19 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %18, i32 0, i32 0
  store %struct.lbuf* null, %struct.lbuf** %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %89, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @LOGPAGES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* @__GFP_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.page* @alloc_page(i32 %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %91

32:                                               ; preds = %24
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = call i8* @page_address(%struct.page* %33)
  store i8* %34, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %85, %32
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.lbuf* @kmalloc(i32 48, i32 %40)
  store %struct.lbuf* %41, %struct.lbuf** %5, align 8
  %42 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %43 = icmp eq %struct.lbuf* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = call i32 @__free_page(%struct.page* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %91

51:                                               ; preds = %39
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = call i32 @get_page(%struct.page* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %60 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %65 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %68 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %67, i32 0, i32 4
  store %struct.page* %66, %struct.page** %68, align 8
  %69 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %70 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %71 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %70, i32 0, i32 3
  store %struct.jfs_log* %69, %struct.jfs_log** %71, align 8
  %72 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %73 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %72, i32 0, i32 2
  %74 = call i32 @init_waitqueue_head(i32* %73)
  %75 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %76 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %75, i32 0, i32 0
  %77 = load %struct.lbuf*, %struct.lbuf** %76, align 8
  %78 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %79 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %78, i32 0, i32 1
  store %struct.lbuf* %77, %struct.lbuf** %79, align 8
  %80 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %81 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %82 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %81, i32 0, i32 0
  store %struct.lbuf* %80, %struct.lbuf** %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %57
  %86 = load i64, i64* @LOGPSIZE, align 8
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %7, align 8
  br label %35

89:                                               ; preds = %35
  br label %20

90:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %96

91:                                               ; preds = %50, %31
  %92 = load %struct.jfs_log*, %struct.jfs_log** %3, align 8
  %93 = call i32 @lbmLogShutdown(%struct.jfs_log* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %90
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @jfs_info(i8*, %struct.jfs_log*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.lbuf* @kmalloc(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @lbmLogShutdown(%struct.jfs_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
