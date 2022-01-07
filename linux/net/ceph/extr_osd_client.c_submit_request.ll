; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32)* @submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_request(%struct.ceph_osd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_osd_request*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %6 = call i32 @ceph_osdc_get_request(%struct.ceph_osd_request* %5)
  %7 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %8 = call i32 @account_request(%struct.ceph_osd_request* %7)
  %9 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @__submit_request(%struct.ceph_osd_request* %9, i32 %10)
  ret void
}

declare dso_local i32 @ceph_osdc_get_request(%struct.ceph_osd_request*) #1

declare dso_local i32 @account_request(%struct.ceph_osd_request*) #1

declare dso_local i32 @__submit_request(%struct.ceph_osd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
