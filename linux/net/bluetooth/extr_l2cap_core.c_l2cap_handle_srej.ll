; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_handle_srej.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_handle_srej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i32, i32, i32 }
%struct.l2cap_ctrl = type { i32, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"chan %p, control %p\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid reqseq %d, disconnecting\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Seq %d not available for retransmission\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Retry limit exceeded (%d)\00", align 1
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_WAIT_F = common dso_local global i64 0, align 8
@CONN_SREJ_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*)* @l2cap_handle_srej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_handle_srej(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.l2cap_ctrl*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %4, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %8 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %6, %struct.l2cap_ctrl* %7)
  %9 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.l2cap_chan*
  %22 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %21)
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = load i32, i32* @ECONNRESET, align 4
  %25 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %23, i32 %24)
  br label %153

26:                                               ; preds = %2
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 4
  %29 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %30 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32* %28, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.l2cap_chan*
  %41 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %40)
  br label %153

42:                                               ; preds = %26
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.l2cap_chan*
  %63 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.l2cap_chan* %62)
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %65 = load i32, i32* @ECONNRESET, align 4
  %66 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %64, i32 %65)
  br label %153

67:                                               ; preds = %47, %42
  %68 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 2
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  %72 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %73 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %67
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %78 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %79 = call i32 @l2cap_pass_to_tx(%struct.l2cap_chan* %77, %struct.l2cap_ctrl* %78)
  %80 = load i32, i32* @CONN_SEND_FBIT, align 4
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %82 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %81, i32 0, i32 2
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %85 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %86 = call i32 @l2cap_retransmit(%struct.l2cap_chan* %84, %struct.l2cap_ctrl* %85)
  %87 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %88 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %87)
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %90 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @L2CAP_TX_STATE_WAIT_F, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %76
  %95 = load i32, i32* @CONN_SREJ_ACT, align 4
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 2
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %100 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %103 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %94, %76
  br label %153

105:                                              ; preds = %67
  %106 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %107 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %108 = call i32 @l2cap_pass_to_tx_fbit(%struct.l2cap_chan* %106, %struct.l2cap_ctrl* %107)
  %109 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %110 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %105
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %118 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @CONN_SREJ_ACT, align 4
  %123 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %124 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %123, i32 0, i32 2
  %125 = call i32 @test_and_clear_bit(i32 %122, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121, %113
  %128 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %129 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %130 = call i32 @l2cap_retransmit(%struct.l2cap_chan* %128, %struct.l2cap_ctrl* %129)
  br label %131

131:                                              ; preds = %127, %121
  br label %152

132:                                              ; preds = %105
  %133 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %134 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %135 = call i32 @l2cap_retransmit(%struct.l2cap_chan* %133, %struct.l2cap_ctrl* %134)
  %136 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %137 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @L2CAP_TX_STATE_WAIT_F, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %132
  %142 = load i32, i32* @CONN_SREJ_ACT, align 4
  %143 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %144 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %143, i32 0, i32 2
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  %146 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %147 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %150 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %141, %132
  br label %152

152:                                              ; preds = %151, %131
  br label %153

153:                                              ; preds = %16, %35, %57, %152, %104
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_pass_to_tx(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_retransmit(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_pass_to_tx_fbit(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
