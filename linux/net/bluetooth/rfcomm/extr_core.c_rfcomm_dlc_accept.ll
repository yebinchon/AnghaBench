; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, %struct.TYPE_8__*, i64, i32 (%struct.rfcomm_dlc*, i32)*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.l2cap_conn = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.l2cap_conn* }

@.str = private unnamed_addr constant [7 x i8] c"dlc %p\00", align 1
@BT_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfcomm_dlc_accept(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %5 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %6 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %3, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.TYPE_9__* @l2cap_pi(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %16, align 8
  store %struct.l2cap_conn* %17, %struct.l2cap_conn** %4, align 8
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %18)
  %20 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %24 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rfcomm_send_ua(%struct.TYPE_8__* %22, i32 %25)
  %27 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %28 = call i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc* %27)
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %30 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %29)
  %31 = load i32, i32* @BT_CONNECTED, align 4
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %33 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %35 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %34, i32 0, i32 4
  %36 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %35, align 8
  %37 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %38 = call i32 %36(%struct.rfcomm_dlc* %37, i32 0)
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %40 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %39)
  %41 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %42 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %47 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hci_conn_switch_role(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %52 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %55 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %58 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @rfcomm_send_msc(%struct.TYPE_8__* %53, i32 1, i32 %56, i32 %59)
  ret void
}

declare dso_local %struct.TYPE_9__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_send_ua(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rfcomm_dlc_clear_timer(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @hci_conn_switch_role(i32, i32) #1

declare dso_local i32 @rfcomm_send_msc(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
