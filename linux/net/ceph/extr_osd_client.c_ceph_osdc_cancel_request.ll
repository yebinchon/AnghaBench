; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_cancel_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_osdc_cancel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i64, %struct.ceph_osd_client* }
%struct.ceph_osd_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_osdc_cancel_request(%struct.ceph_osd_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_request*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %2, align 8
  %4 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %4, i32 0, i32 1
  %6 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %5, align 8
  store %struct.ceph_osd_client* %6, %struct.ceph_osd_client** %3, align 8
  %7 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %2, align 8
  %16 = call i32 @cancel_request(%struct.ceph_osd_request* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %18, i32 0, i32 0
  %20 = call i32 @up_write(i32* %19)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @cancel_request(%struct.ceph_osd_request*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
