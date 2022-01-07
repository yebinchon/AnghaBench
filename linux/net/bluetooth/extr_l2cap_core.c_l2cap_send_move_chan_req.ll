; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_move_chan_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_move_chan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i8* }
%struct.l2cap_move_chan_req = type { i8*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"chan %p, dest_amp_id %d\00", align 1
@L2CAP_MOVE_CHAN_REQ = common dso_local global i32 0, align 4
@L2CAP_MOVE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i8*)* @l2cap_send_move_chan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_move_chan_req(%struct.l2cap_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l2cap_move_chan_req, align 8
  %6 = alloca i8*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7, i8* %8)
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @l2cap_get_ident(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds %struct.l2cap_move_chan_req, %struct.l2cap_move_chan_req* %5, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @L2CAP_MOVE_CHAN_REQ, align 4
  %29 = call i32 @l2cap_send_cmd(i32 %26, i8* %27, i32 %28, i32 16, %struct.l2cap_move_chan_req* %5)
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = load i32, i32* @L2CAP_MOVE_TIMEOUT, align 4
  %32 = call i32 @__set_chan_timer(%struct.l2cap_chan* %30, i32 %31)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i8*) #1

declare dso_local i8* @l2cap_get_ident(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @l2cap_send_cmd(i32, i8*, i32, i32, %struct.l2cap_move_chan_req*) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
