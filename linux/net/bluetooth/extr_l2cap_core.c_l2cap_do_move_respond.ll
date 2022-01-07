; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_move_respond.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_do_move_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_chan = type { i64, %struct.TYPE_2__* }

@BT_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_MOVE_WAIT_CONFIRM = common dso_local global i32 0, align 4
@L2CAP_MR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_LOGICAL_CFM = common dso_local global i32 0, align 4
@L2CAP_MR_NOT_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_do_move_respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_do_move_respond(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.hci_chan* null, %struct.hci_chan** %5, align 8
  %6 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %7 = icmp ne %struct.hci_chan* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %10 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BT_CONNECTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %16 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 2
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @L2CAP_MOVE_WAIT_CONFIRM, align 4
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = load i32, i32* @L2CAP_MR_SUCCESS, align 4
  %32 = call i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan* %30, i32 %31)
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %34 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %35 = load i32, i32* @L2CAP_MR_SUCCESS, align 4
  %36 = call i32 @l2cap_logical_cfm(%struct.l2cap_chan* %33, %struct.hci_chan* %34, i32 %35)
  br label %41

37:                                               ; preds = %8
  %38 = load i32, i32* @L2CAP_MOVE_WAIT_LOGICAL_CFM, align 4
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %14
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %44 = load i32, i32* @L2CAP_MR_NOT_ALLOWED, align 4
  %45 = call i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_logical_cfm(%struct.l2cap_chan*, %struct.hci_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
