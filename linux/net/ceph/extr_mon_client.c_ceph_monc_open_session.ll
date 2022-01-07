; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_open_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_open_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32 }

@CEPH_SUB_MONMAP = common dso_local global i32 0, align 4
@CEPH_SUB_OSDMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monc_open_session(%struct.ceph_mon_client* %0) #0 {
  %2 = alloca %struct.ceph_mon_client*, align 8
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %2, align 8
  %3 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %7 = load i32, i32* @CEPH_SUB_MONMAP, align 4
  %8 = call i32 @__ceph_monc_want_map(%struct.ceph_mon_client* %6, i32 %7, i32 0, i32 1)
  %9 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %10 = load i32, i32* @CEPH_SUB_OSDMAP, align 4
  %11 = call i32 @__ceph_monc_want_map(%struct.ceph_mon_client* %9, i32 %10, i32 0, i32 0)
  %12 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %13 = call i32 @__open_session(%struct.ceph_mon_client* %12)
  %14 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %15 = call i32 @__schedule_delayed(%struct.ceph_mon_client* %14)
  %16 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %17 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ceph_monc_want_map(%struct.ceph_mon_client*, i32, i32, i32) #1

declare dso_local i32 @__open_session(%struct.ceph_mon_client*) #1

declare dso_local i32 @__schedule_delayed(%struct.ceph_mon_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
