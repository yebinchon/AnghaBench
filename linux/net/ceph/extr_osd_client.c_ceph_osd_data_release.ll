; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osd_data_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osd_data_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_data = type { i64, i32, i32, i64, i64, i64 }

@CEPH_OSD_DATA_TYPE_PAGES = common dso_local global i64 0, align 8
@CEPH_OSD_DATA_TYPE_PAGELIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_data*)* @ceph_osd_data_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_osd_data_release(%struct.ceph_osd_data* %0) #0 {
  %2 = alloca %struct.ceph_osd_data*, align 8
  %3 = alloca i32, align 4
  store %struct.ceph_osd_data* %0, %struct.ceph_osd_data** %2, align 8
  %4 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGES, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %20 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @calc_pages_for(i32 %18, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ceph_release_page_vector(i32 %26, i32 %27)
  br label %41

29:                                               ; preds = %9, %1
  %30 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %31 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGELIST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %37 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ceph_pagelist_release(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %2, align 8
  %43 = call i32 @ceph_osd_data_init(%struct.ceph_osd_data* %42)
  ret void
}

declare dso_local i32 @calc_pages_for(i32, i32) #1

declare dso_local i32 @ceph_release_page_vector(i32, i32) #1

declare dso_local i32 @ceph_pagelist_release(i32) #1

declare dso_local i32 @ceph_osd_data_init(%struct.ceph_osd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
