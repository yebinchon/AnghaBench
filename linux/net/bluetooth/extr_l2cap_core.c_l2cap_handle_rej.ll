; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_handle_rej.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_handle_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i32, i32 }
%struct.l2cap_ctrl = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"chan %p, control %p\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid reqseq %d, disconnecting\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Retry limit exceeded (%d)\00", align 1
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@CONN_REJ_ACT = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_WAIT_F = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*)* @l2cap_handle_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_handle_rej(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.l2cap_ctrl*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %4, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = ptrtoint %struct.l2cap_chan* %6 to i64
  %8 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %9 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %7, %struct.l2cap_ctrl* %8)
  %10 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %23 = load i32, i32* @ECONNRESET, align 4
  %24 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %22, i32 %23)
  br label %97

25:                                               ; preds = %2
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 4
  %28 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %29 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32* %27, i64 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %55 = load i32, i32* @ECONNRESET, align 4
  %56 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %54, i32 %55)
  br label %97

57:                                               ; preds = %39, %36, %25
  %58 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %60 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %59, i32 0, i32 3
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %63 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %64 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %62, %struct.l2cap_ctrl* %63)
  %65 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %66 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %57
  %70 = load i32, i32* @CONN_REJ_ACT, align 4
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 3
  %73 = call i32 @test_and_clear_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %77 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %78 = call i32 @l2cap_retransmit_all(%struct.l2cap_chan* %76, %struct.l2cap_ctrl* %77)
  br label %79

79:                                               ; preds = %75, %69
  br label %97

80:                                               ; preds = %57
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %82 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %83 = call i32 @l2cap_retransmit_all(%struct.l2cap_chan* %81, %struct.l2cap_ctrl* %82)
  %84 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %85 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %84)
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %87 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @L2CAP_TX_STATE_WAIT_F, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load i32, i32* @CONN_REJ_ACT, align 4
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %94 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %93, i32 0, i32 3
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %91, %80
  br label %97

97:                                               ; preds = %17, %49, %96, %79
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, ...) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_pass_to_tx(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_retransmit_all(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
