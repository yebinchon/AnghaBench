; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_alloc_linger_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_alloc_linger_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32, i32 }
%struct.ceph_osd_linger_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_osd_request* (%struct.ceph_osd_linger_request*)* @alloc_linger_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_osd_request* @alloc_linger_request(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.ceph_osd_linger_request*, align 8
  %4 = alloca %struct.ceph_osd_request*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %3, align 8
  %5 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_NOIO, align 4
  %9 = call %struct.ceph_osd_request* @ceph_osdc_alloc_request(i32 %7, i32* null, i32 1, i32 0, i32 %8)
  store %struct.ceph_osd_request* %9, %struct.ceph_osd_request** %4, align 8
  %10 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %11 = icmp ne %struct.ceph_osd_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.ceph_osd_request* null, %struct.ceph_osd_request** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %14, i32 0, i32 1
  %16 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @ceph_oid_copy(i32* %15, i32* %18)
  %20 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %20, i32 0, i32 0
  %22 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @ceph_oloc_copy(i32* %21, i32* %24)
  %26 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  store %struct.ceph_osd_request* %26, %struct.ceph_osd_request** %2, align 8
  br label %27

27:                                               ; preds = %13, %12
  %28 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  ret %struct.ceph_osd_request* %28
}

declare dso_local %struct.ceph_osd_request* @ceph_osdc_alloc_request(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_oid_copy(i32*, i32*) #1

declare dso_local i32 @ceph_oloc_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
