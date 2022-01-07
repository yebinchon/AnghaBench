; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_lwork_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_lwork_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger_work = type { i32, %struct.ceph_osd_linger_request* }
%struct.ceph_osd_linger_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linger_work*)* @lwork_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwork_free(%struct.linger_work* %0) #0 {
  %2 = alloca %struct.linger_work*, align 8
  %3 = alloca %struct.ceph_osd_linger_request*, align 8
  store %struct.linger_work* %0, %struct.linger_work** %2, align 8
  %4 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %5 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %4, i32 0, i32 1
  %6 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %5, align 8
  store %struct.ceph_osd_linger_request* %6, %struct.ceph_osd_linger_request** %3, align 8
  %7 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %11 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %3, align 8
  %17 = call i32 @linger_put(%struct.ceph_osd_linger_request* %16)
  %18 = load %struct.linger_work*, %struct.linger_work** %2, align 8
  %19 = call i32 @kfree(%struct.linger_work* %18)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @linger_put(%struct.ceph_osd_linger_request*) #1

declare dso_local i32 @kfree(%struct.linger_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
