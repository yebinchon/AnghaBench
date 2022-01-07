; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_discover_amp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_discover_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amp_mgr* }
%struct.amp_mgr = type { %struct.l2cap_chan* }
%struct.a2mp_discov_req = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"chan %p conn %p mgr %p\00", align 1
@L2CAP_A2MP_DEFAULT_MTU = common dso_local global i32 0, align 4
@A2MP_DISCOVER_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a2mp_discover_amp(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.amp_mgr*, align 8
  %5 = alloca %struct.a2mp_discov_req, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  store %struct.l2cap_conn* %8, %struct.l2cap_conn** %3, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %10 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.amp_mgr*, %struct.amp_mgr** %12, align 8
  store %struct.amp_mgr* %13, %struct.amp_mgr** %4, align 8
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %16 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %14, %struct.l2cap_conn* %15, %struct.amp_mgr* %16)
  %18 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %19 = icmp ne %struct.amp_mgr* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %22 = call %struct.amp_mgr* @amp_mgr_create(%struct.l2cap_conn* %21, i32 1)
  store %struct.amp_mgr* %22, %struct.amp_mgr** %4, align 8
  %23 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %24 = icmp ne %struct.amp_mgr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %29 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %30 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %29, i32 0, i32 0
  store %struct.l2cap_chan* %28, %struct.l2cap_chan** %30, align 8
  %31 = load i32, i32* @L2CAP_A2MP_DEFAULT_MTU, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.a2mp_discov_req, %struct.a2mp_discov_req* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.a2mp_discov_req, %struct.a2mp_discov_req* %5, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.amp_mgr*, %struct.amp_mgr** %4, align 8
  %36 = load i32, i32* @A2MP_DISCOVER_REQ, align 4
  %37 = call i32 @a2mp_send(%struct.amp_mgr* %35, i32 %36, i32 1, i32 16, %struct.a2mp_discov_req* %5)
  br label %38

38:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.l2cap_conn*, %struct.amp_mgr*) #1

declare dso_local %struct.amp_mgr* @amp_mgr_create(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_discov_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
