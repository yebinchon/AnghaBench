; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c___fuse_request_send.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c___fuse_request_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { %struct.fuse_iqueue }
%struct.fuse_iqueue = type { i32, i32 }
%struct.fuse_req = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FR_BACKGROUND = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @__fuse_request_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fuse_request_send(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  %5 = alloca %struct.fuse_iqueue*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %6 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %7 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %6, i32 0, i32 0
  store %struct.fuse_iqueue* %7, %struct.fuse_iqueue** %5, align 8
  %8 = load i32, i32* @FR_BACKGROUND, align 4
  %9 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %10 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %9, i32 0, i32 2
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %14 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %17 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %22 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* @ENOTCONN, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %32 = call i32 @fuse_get_unique(%struct.fuse_iqueue* %31)
  %33 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %38 = call i32 @__fuse_get_request(%struct.fuse_req* %37)
  %39 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %5, align 8
  %40 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %41 = call i32 @queue_request_and_unlock(%struct.fuse_iqueue* %39, %struct.fuse_req* %40)
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %43 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %44 = call i32 @request_wait_answer(%struct.fuse_conn* %42, %struct.fuse_req* %43)
  %45 = call i32 (...) @smp_rmb()
  br label %46

46:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_get_unique(%struct.fuse_iqueue*) #1

declare dso_local i32 @__fuse_get_request(%struct.fuse_req*) #1

declare dso_local i32 @queue_request_and_unlock(%struct.fuse_iqueue*, %struct.fuse_req*) #1

declare dso_local i32 @request_wait_answer(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
