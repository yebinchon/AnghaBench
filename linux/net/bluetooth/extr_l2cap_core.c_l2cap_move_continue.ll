; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_continue.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_move_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_chan = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hci_chan = type { %struct.TYPE_2__*, i32 }

@L2CAP_MR_PEND = common dso_local global i64 0, align 8
@L2CAP_MOVE_ERTX_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_LOGICAL_CFM = common dso_local global i8* null, align 8
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_MOVE_WAIT_CONFIRM_RSP = common dso_local global i32 0, align 4
@L2CAP_MC_CONFIRMED = common dso_local global i32 0, align 4
@L2CAP_MR_SUCCESS = common dso_local global i64 0, align 8
@L2CAP_MC_UNCONFIRMED = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i64, i64)* @l2cap_move_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_move_continue(%struct.l2cap_conn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.hci_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.hci_chan* null, %struct.hci_chan** %8, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn* %9, i64 %10)
  store %struct.l2cap_chan* %11, %struct.l2cap_chan** %7, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %13 = icmp ne %struct.l2cap_chan* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @l2cap_send_move_chan_cfm_icid(%struct.l2cap_conn* %15, i64 %16)
  br label %129

18:                                               ; preds = %3
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %20 = call i32 @__clear_chan_timer(%struct.l2cap_chan* %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @L2CAP_MR_PEND, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %26 = load i32, i32* @L2CAP_MOVE_ERTX_TIMEOUT, align 4
  %27 = call i32 @__set_chan_timer(%struct.l2cap_chan* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %115 [
    i32 130, label %32
    i32 128, label %37
    i32 129, label %61
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** @L2CAP_MOVE_WAIT_LOGICAL_CFM, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %126

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @L2CAP_MR_PEND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %126

42:                                               ; preds = %37
  %43 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 5
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @L2CAP_MOVE_WAIT_LOCAL_BUSY, align 4
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %59

52:                                               ; preds = %42
  %53 = load i32, i32* @L2CAP_MOVE_WAIT_CONFIRM_RSP, align 4
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %55 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %57 = load i32, i32* @L2CAP_MC_CONFIRMED, align 4
  %58 = call i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  br label %60

60:                                               ; preds = %59
  br label %126

61:                                               ; preds = %28
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @L2CAP_MR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** @L2CAP_MOVE_WAIT_LOGICAL_CFM, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %69 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %73

70:                                               ; preds = %61
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 0
  store i32 130, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.hci_chan*, %struct.hci_chan** %8, align 8
  %75 = icmp ne %struct.hci_chan* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %78 = load i32, i32* @L2CAP_MC_UNCONFIRMED, align 4
  %79 = call i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %77, i32 %78)
  br label %126

80:                                               ; preds = %73
  %81 = load %struct.hci_chan*, %struct.hci_chan** %8, align 8
  %82 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BT_CONNECTED, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %126

87:                                               ; preds = %80
  %88 = load %struct.hci_chan*, %struct.hci_chan** %8, align 8
  %89 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %92 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %91, i32 0, i32 4
  store %struct.TYPE_2__* %90, %struct.TYPE_2__** %92, align 8
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %94 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @L2CAP_MR_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %105 = load i32, i32* @L2CAP_MC_CONFIRMED, align 4
  %106 = call i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %104, i32 %105)
  br label %110

107:                                              ; preds = %87
  %108 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %109 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %108, i32 0, i32 0
  store i32 128, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %103
  %111 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %112 = load %struct.hci_chan*, %struct.hci_chan** %8, align 8
  %113 = load i64, i64* @L2CAP_MR_SUCCESS, align 8
  %114 = call i32 @l2cap_logical_cfm(%struct.l2cap_chan* %111, %struct.hci_chan* %112, i64 %113)
  br label %126

115:                                              ; preds = %28
  %116 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %117 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %120 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %122 = call i32 @l2cap_move_done(%struct.l2cap_chan* %121)
  %123 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %124 = load i32, i32* @L2CAP_MC_UNCONFIRMED, align 4
  %125 = call i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan* %123, i32 %124)
  br label %126

126:                                              ; preds = %115, %110, %86, %76, %60, %41, %32
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %128 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %127)
  br label %129

129:                                              ; preds = %126, %14
  ret void
}

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn*, i64) #1

declare dso_local i32 @l2cap_send_move_chan_cfm_icid(%struct.l2cap_conn*, i64) #1

declare dso_local i32 @__clear_chan_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_move_chan_cfm(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_logical_cfm(%struct.l2cap_chan*, %struct.hci_chan*, i64) #1

declare dso_local i32 @l2cap_move_done(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
