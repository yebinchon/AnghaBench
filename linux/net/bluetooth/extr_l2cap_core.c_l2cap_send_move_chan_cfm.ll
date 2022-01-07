; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_move_chan_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_move_chan_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32 }
%struct.l2cap_move_chan_cfm = type { i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"chan %p, result 0x%4.4x\00", align 1
@L2CAP_MOVE_CHAN_CFM = common dso_local global i32 0, align 4
@L2CAP_MOVE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_send_move_chan_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_move_chan_cfm, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %6, i32 %7)
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @l2cap_get_ident(i32 %11)
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.l2cap_move_chan_cfm, %struct.l2cap_move_chan_cfm* %5, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.l2cap_move_chan_cfm, %struct.l2cap_move_chan_cfm* %5, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @L2CAP_MOVE_CHAN_CFM, align 4
  %30 = call i32 @l2cap_send_cmd(i32 %25, i32 %28, i32 %29, i32 16, %struct.l2cap_move_chan_cfm* %5)
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %32 = load i32, i32* @L2CAP_MOVE_TIMEOUT, align 4
  %33 = call i32 @__set_chan_timer(%struct.l2cap_chan* %31, i32 %32)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_get_ident(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(i32, i32, i32, i32, %struct.l2cap_move_chan_cfm*) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
