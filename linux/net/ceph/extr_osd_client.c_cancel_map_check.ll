; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_cancel_map_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_cancel_map_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, %struct.ceph_osd_client* }
%struct.ceph_osd_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*)* @cancel_map_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_map_check(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  %4 = alloca %struct.ceph_osd_request*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %5 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %5, i32 0, i32 1
  %7 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %6, align 8
  store %struct.ceph_osd_client* %7, %struct.ceph_osd_client** %3, align 8
  %8 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %9 = call i32 @verify_osdc_wrlocked(%struct.ceph_osd_client* %8)
  %10 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %10, i32 0, i32 0
  %12 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ceph_osd_request* @lookup_request_mc(i32* %11, i32 %14)
  store %struct.ceph_osd_request* %15, %struct.ceph_osd_request** %4, align 8
  %16 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %17 = icmp ne %struct.ceph_osd_request* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %21 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %22 = icmp ne %struct.ceph_osd_request* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %25, i32 0, i32 0
  %27 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %28 = call i32 @erase_request_mc(i32* %26, %struct.ceph_osd_request* %27)
  %29 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %30 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %29)
  br label %31

31:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @verify_osdc_wrlocked(%struct.ceph_osd_client*) #1

declare dso_local %struct.ceph_osd_request* @lookup_request_mc(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @erase_request_mc(i32*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
