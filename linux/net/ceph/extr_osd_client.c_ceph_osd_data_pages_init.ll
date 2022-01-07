; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osd_data_pages_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osd_data_pages_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_data = type { i32, i32, i32, i32, %struct.page**, i32 }
%struct.page = type { i32 }

@CEPH_OSD_DATA_TYPE_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_data*, %struct.page**, i32, i32, i32, i32)* @ceph_osd_data_pages_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_osd_data_pages_init(%struct.ceph_osd_data* %0, %struct.page** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ceph_osd_data*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ceph_osd_data* %0, %struct.ceph_osd_data** %7, align 8
  store %struct.page** %1, %struct.page*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @CEPH_OSD_DATA_TYPE_PAGES, align 4
  %14 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %15 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.page**, %struct.page*** %8, align 8
  %17 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %17, i32 0, i32 4
  store %struct.page** %16, %struct.page*** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %24 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %27 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.ceph_osd_data*, %struct.ceph_osd_data** %7, align 8
  %30 = getelementptr inbounds %struct.ceph_osd_data, %struct.ceph_osd_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
