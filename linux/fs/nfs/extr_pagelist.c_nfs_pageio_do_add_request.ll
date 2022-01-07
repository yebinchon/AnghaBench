; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_do_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_pageio_do_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.nfs_page = type { i64, i64, i32 }
%struct.nfs_pgio_mirror = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NFS_MOUNT_SOFTERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @nfs_pageio_do_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_pageio_do_add_request(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_pgio_mirror*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %5, align 8
  %8 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %9 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %8)
  store %struct.nfs_pgio_mirror* %9, %struct.nfs_pgio_mirror** %6, align 8
  store %struct.nfs_page* null, %struct.nfs_page** %7, align 8
  %10 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.nfs_page* @nfs_list_entry(i32 %18)
  store %struct.nfs_page* %19, %struct.nfs_page** %7, align 8
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)**
  %26 = load i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)** %25, align 8
  %27 = icmp ne i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)**
  %34 = load i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)** %33, align 8
  %35 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %36 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %37 = call i32 %34(%struct.nfs_pageio_descriptor* %35, %struct.nfs_page* %36)
  br label %38

38:                                               ; preds = %28, %20
  %39 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %103

44:                                               ; preds = %38
  %45 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %14
  %51 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %52 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %50
  %56 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %55
  %64 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %65 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_6__* @NFS_SERVER(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NFS_MOUNT_SOFTERR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  %76 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %83

78:                                               ; preds = %63
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  %81 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %82 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %73
  store i32 0, i32* %3, align 4
  br label %103

84:                                               ; preds = %55, %50
  %85 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %86 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %87 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %88 = call i32 @nfs_can_coalesce_requests(%struct.nfs_page* %85, %struct.nfs_page* %86, %struct.nfs_pageio_descriptor* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %103

91:                                               ; preds = %84
  %92 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %93 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %94 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %93, i32 0, i32 1
  %95 = call i32 @nfs_list_move_request(%struct.nfs_page* %92, %struct.TYPE_5__* %94)
  %96 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %97 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %100 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %91, %90, %83, %43
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local %struct.TYPE_6__* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs_can_coalesce_requests(%struct.nfs_page*, %struct.nfs_page*, %struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_list_move_request(%struct.nfs_page*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
