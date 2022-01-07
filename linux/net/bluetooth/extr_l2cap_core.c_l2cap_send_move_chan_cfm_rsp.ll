; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_move_chan_cfm_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_move_chan_cfm_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_move_chan_cfm_rsp = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"icid 0x%4.4x\00", align 1
@L2CAP_MOVE_CHAN_CFM_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32, i32)* @l2cap_send_move_chan_cfm_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_move_chan_cfm_rsp(%struct.l2cap_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_move_chan_cfm_rsp, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = getelementptr inbounds %struct.l2cap_move_chan_cfm_rsp, %struct.l2cap_move_chan_cfm_rsp* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @L2CAP_MOVE_CHAN_CFM_RSP, align 4
  %16 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %13, i32 %14, i32 %15, i32 4, %struct.l2cap_move_chan_cfm_rsp* %7)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_move_chan_cfm_rsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
