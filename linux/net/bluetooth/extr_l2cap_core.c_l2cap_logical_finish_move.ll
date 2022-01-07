; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_logical_finish_move.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_logical_finish_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_chan = type { %struct.TYPE_2__* }

@.str = private unnamed_addr constant [14 x i8] c"move_state %d\00", align 1
@L2CAP_MOVE_WAIT_RSP_SUCCESS = common dso_local global i32 0, align 4
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_INITIATOR = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_CONFIRM_RSP = common dso_local global i32 0, align 4
@L2CAP_MC_CONFIRMED = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_RESPONDER = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_CONFIRM = common dso_local global i32 0, align 4
@L2CAP_MR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_MOVE_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.hci_chan*)* @l2cap_logical_finish_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_logical_finish_move(%struct.l2cap_chan* %0, %struct.hci_chan* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.hci_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.hci_chan* %1, %struct.hci_chan** %4, align 8
  %5 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %6 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 4
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %67 [
    i32 128, label %24
    i32 129, label %28
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @L2CAP_MOVE_WAIT_RSP_SUCCESS, align 4
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %73

28:                                               ; preds = %2
  %29 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 2
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @L2CAP_MOVE_WAIT_LOCAL_BUSY, align 4
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %66

38:                                               ; preds = %28
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @L2CAP_MOVE_ROLE_INITIATOR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @L2CAP_MOVE_WAIT_CONFIRM_RSP, align 4
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %49 = load i32, i32* @L2CAP_MC_CONFIRMED, align 4
  %50 = call i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %48, i32 %49)
  br label %65

51:                                               ; preds = %38
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @L2CAP_MOVE_ROLE_RESPONDER, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @L2CAP_MOVE_WAIT_CONFIRM, align 4
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %60 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %62 = load i32, i32* @L2CAP_MR_SUCCESS, align 4
  %63 = call i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %51
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %34
  br label %73

67:                                               ; preds = %2
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %69 = call i32 @__release_logical_link(%struct.l2cap_chan* %68)
  %70 = load i32, i32* @L2CAP_MOVE_STABLE, align 4
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %66, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_move_chan_rsp(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__release_logical_link(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
