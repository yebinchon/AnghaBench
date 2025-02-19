; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_send_map_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_send_map_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.ceph_osd_client* }
%struct.ceph_osd_client = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"osdmap\00", align 1
@map_check_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @send_map_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_map_check(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %6 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %6, i32 0, i32 1
  %8 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %7, align 8
  store %struct.ceph_osd_client* %8, %struct.ceph_osd_client** %3, align 8
  %9 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %10 = call i32 @verify_osdc_wrlocked(%struct.ceph_osd_client* %9)
  %11 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %11, i32 0, i32 1
  %13 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ceph_osd_request* @lookup_request_mc(i32* %12, i32 %15)
  store %struct.ceph_osd_request* %16, %struct.ceph_osd_request** %4, align 8
  %17 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %18 = icmp ne %struct.ceph_osd_request* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %21 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %22 = icmp ne %struct.ceph_osd_request* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %27 = call i32 @ceph_osdc_get_request(%struct.ceph_osd_request* %26)
  %28 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %28, i32 0, i32 1
  %30 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %31 = call i32 @insert_request_mc(i32* %29, %struct.ceph_osd_request* %30)
  %32 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @map_check_cb, align 4
  %37 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %38 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ceph_monc_get_version_async(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @WARN_ON(i32 %41)
  br label %43

43:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @verify_osdc_wrlocked(%struct.ceph_osd_client*) #1

declare dso_local %struct.ceph_osd_request* @lookup_request_mc(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_osdc_get_request(%struct.ceph_osd_request*) #1

declare dso_local i32 @insert_request_mc(i32*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_monc_get_version_async(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
