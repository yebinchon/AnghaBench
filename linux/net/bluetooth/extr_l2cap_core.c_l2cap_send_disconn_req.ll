; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_disconn_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_disconn_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i64, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_disconn_req = type { i8*, i8* }

@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_CID_A2MP = common dso_local global i64 0, align 8
@BT_DISCONN = common dso_local global i32 0, align 4
@L2CAP_DISCONN_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_send_disconn_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_disconn_req(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_disconn_req, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 4
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  store %struct.l2cap_conn* %9, %struct.l2cap_conn** %5, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %11 = icmp ne %struct.l2cap_conn* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BT_CONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = call i32 @__clear_retrans_timer(%struct.l2cap_chan* %26)
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %29 = call i32 @__clear_monitor_timer(%struct.l2cap_chan* %28)
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = call i32 @__clear_ack_timer(%struct.l2cap_chan* %30)
  br label %32

32:                                               ; preds = %25, %19, %13
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @L2CAP_CID_A2MP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = load i32, i32* @BT_DISCONN, align 4
  %41 = call i32 @l2cap_state_change(%struct.l2cap_chan* %39, i32 %40)
  br label %62

42:                                               ; preds = %32
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @cpu_to_le16(i64 %45)
  %47 = getelementptr inbounds %struct.l2cap_disconn_req, %struct.l2cap_disconn_req* %6, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @cpu_to_le16(i64 %50)
  %52 = getelementptr inbounds %struct.l2cap_disconn_req, %struct.l2cap_disconn_req* %6, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %54 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %55 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %54)
  %56 = load i32, i32* @L2CAP_DISCONN_REQ, align 4
  %57 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %53, i32 %55, i32 %56, i32 16, %struct.l2cap_disconn_req* %6)
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %59 = load i32, i32* @BT_DISCONN, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @l2cap_state_change_and_error(%struct.l2cap_chan* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %42, %38, %12
  ret void
}

declare dso_local i32 @__clear_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__clear_monitor_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__clear_ack_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_state_change(%struct.l2cap_chan*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_disconn_req*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_state_change_and_error(%struct.l2cap_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
