; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_queue_watch_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_queue_watch_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { i32 }
%struct.linger_work = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@do_watch_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate error-lwork\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_linger_request*)* @queue_watch_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_watch_error(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_linger_request*, align 8
  %3 = alloca %struct.linger_work*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %2, align 8
  %4 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %5 = load i32, i32* @do_watch_error, align 4
  %6 = call %struct.linger_work* @lwork_alloc(%struct.ceph_osd_linger_request* %4, i32 %5)
  store %struct.linger_work* %6, %struct.linger_work** %3, align 8
  %7 = load %struct.linger_work*, %struct.linger_work** %3, align 8
  %8 = icmp ne %struct.linger_work* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.linger_work*, %struct.linger_work** %3, align 8
  %16 = getelementptr inbounds %struct.linger_work, %struct.linger_work* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.linger_work*, %struct.linger_work** %3, align 8
  %19 = call i32 @lwork_queue(%struct.linger_work* %18)
  br label %20

20:                                               ; preds = %11, %9
  ret void
}

declare dso_local %struct.linger_work* @lwork_alloc(%struct.ceph_osd_linger_request*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lwork_queue(%struct.linger_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
