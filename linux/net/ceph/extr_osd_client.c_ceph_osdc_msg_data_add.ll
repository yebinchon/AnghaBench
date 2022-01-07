; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_msg_data_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_msg_data_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32 }
%struct.ceph_osd_data = type { i64, i32, i32, i32, i32, i32 }

@CEPH_OSD_DATA_TYPE_PAGES = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@CEPH_OSD_DATA_TYPE_PAGELIST = common dso_local global i64 0, align 8
@CEPH_OSD_DATA_TYPE_BVECS = common dso_local global i64 0, align 8
@CEPH_OSD_DATA_TYPE_NONE = common dso_local global i64 0, align 8
@CEPH_OSD_DATA_TYPE_BIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg*, %struct.ceph_osd_data*)* @ceph_osdc_msg_data_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_osdc_msg_data_add(%struct.ceph_msg* %0, %struct.ceph_osd_data* %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_osd_data*, align 8
  %5 = alloca i64, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %3, align 8
  store %struct.ceph_osd_data* %1, %struct.ceph_osd_data** %4, align 8
  %6 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %7 = call i64 @ceph_osd_data_length(%struct.ceph_osd_data* %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGES, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SIZE_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %23 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ceph_msg_data_add_pages(%struct.ceph_msg* %22, i32 %25, i64 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %13
  br label %70

32:                                               ; preds = %2
  %33 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CEPH_OSD_DATA_TYPE_PAGELIST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %45 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ceph_msg_data_add_pagelist(%struct.ceph_msg* %44, i32 %47)
  br label %69

49:                                               ; preds = %32
  %50 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CEPH_OSD_DATA_TYPE_BVECS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %57 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %57, i32 0, i32 1
  %59 = call i32 @ceph_msg_data_add_bvecs(%struct.ceph_msg* %56, i32* %58)
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %4, align 8
  %62 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CEPH_OSD_DATA_TYPE_NONE, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  br label %69

69:                                               ; preds = %68, %38
  br label %70

70:                                               ; preds = %69, %31
  ret void
}

declare dso_local i64 @ceph_osd_data_length(%struct.ceph_osd_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_msg_data_add_pages(%struct.ceph_msg*, i32, i64, i32) #1

declare dso_local i32 @ceph_msg_data_add_pagelist(%struct.ceph_msg*, i32) #1

declare dso_local i32 @ceph_msg_data_add_bvecs(%struct.ceph_msg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
