; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_linger_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_linger_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { %struct.ceph_osd_client* }
%struct.ceph_osd_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_linger_request*)* @linger_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linger_cancel(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_linger_request*, align 8
  %3 = alloca %struct.ceph_osd_client*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %2, align 8
  %4 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %4, i32 0, i32 0
  %6 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %5, align 8
  store %struct.ceph_osd_client* %6, %struct.ceph_osd_client** %3, align 8
  %7 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %11 = call i64 @__linger_registered(%struct.ceph_osd_linger_request* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %15 = call i32 @__linger_cancel(%struct.ceph_osd_linger_request* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %17, i32 0, i32 0
  %19 = call i32 @up_write(i32* %18)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @__linger_registered(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @__linger_cancel(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
