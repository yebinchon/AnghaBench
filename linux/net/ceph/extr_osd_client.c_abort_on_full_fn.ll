; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_abort_on_full_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_abort_on_full_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.TYPE_5__, %struct.ceph_osd_client* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ceph_osd_client = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@CEPH_OSDMAP_FULL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_osd_request*, i8*)* @abort_on_full_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abort_on_full_fn(%struct.ceph_osd_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ceph_osd_client*, align 8
  %6 = alloca i32*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %7, i32 0, i32 2
  %9 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %8, align 8
  store %struct.ceph_osd_client* %9, %struct.ceph_osd_client** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %5, align 8
  %20 = load i32, i32* @CEPH_OSDMAP_FULL, align 4
  %21 = call i64 @ceph_osdmap_flag(%struct.ceph_osd_client* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %5, align 8
  %25 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @pool_full(%struct.ceph_osd_client* %24, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %23, %18
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %5, align 8
  %38 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @update_epoch_barrier(%struct.ceph_osd_client* %37, i32 %42)
  %44 = load i32*, i32** %6, align 8
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @abort_request(%struct.ceph_osd_request* %46, i32 %48)
  br label %50

50:                                               ; preds = %45, %23, %2
  ret i32 0
}

declare dso_local i64 @ceph_osdmap_flag(%struct.ceph_osd_client*, i32) #1

declare dso_local i64 @pool_full(%struct.ceph_osd_client*, i32) #1

declare dso_local i32 @update_epoch_barrier(%struct.ceph_osd_client*, i32) #1

declare dso_local i32 @abort_request(%struct.ceph_osd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
