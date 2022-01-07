; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_lwork_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_lwork_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger_work = type { i32, i32, i32, %struct.ceph_osd_linger_request* }
%struct.ceph_osd_linger_request = type { i32, %struct.ceph_osd_client* }
%struct.ceph_osd_client = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linger_work*)* @lwork_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwork_queue(%struct.linger_work* %0) #0 {
  %2 = alloca %struct.linger_work*, align 8
  %3 = alloca %struct.ceph_osd_linger_request*, align 8
  %4 = alloca %struct.ceph_osd_client*, align 8
  store %struct.linger_work* %0, %struct.linger_work** %2, align 8
  %5 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %6 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %5, i32 0, i32 3
  %7 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %6, align 8
  store %struct.ceph_osd_linger_request* %7, %struct.ceph_osd_linger_request** %3, align 8
  %8 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %8, i32 0, i32 1
  %10 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  store %struct.ceph_osd_client* %10, %struct.ceph_osd_client** %4, align 8
  %11 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %12 = call i32 @verify_lreq_locked(%struct.ceph_osd_linger_request* %11)
  %13 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %14 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %22 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %24 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %23, i32 0, i32 1
  %25 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %24, i32* %26)
  %28 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %32 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %31, i32 0, i32 0
  %33 = call i32 @queue_work(i32 %30, i32* %32)
  ret void
}

declare dso_local i32 @verify_lreq_locked(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
