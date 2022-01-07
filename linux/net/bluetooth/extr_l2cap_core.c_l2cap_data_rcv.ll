; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_data_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_data_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i64, i32 }
%struct.sk_buff = type { i64 }
%struct.l2cap_ctrl = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.l2cap_ctrl }

@L2CAP_SAR_START = common dso_local global i64 0, align 8
@L2CAP_SDULEN_SIZE = common dso_local global i64 0, align 8
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@L2CAP_FCS_SIZE = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@L2CAP_MODE_STREAMING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"iframe sar %d, reqseq %d, final %d, txseq %d\00", align 1
@L2CAP_TX_STATE_WAIT_F = common dso_local global i64 0, align 8
@L2CAP_EV_RECV_IFRAME = common dso_local global i32 0, align 4
@L2CAP_EV_RECV_RR = common dso_local global i32 0, align 4
@L2CAP_EV_RECV_REJ = common dso_local global i32 0, align 4
@L2CAP_EV_RECV_RNR = common dso_local global i32 0, align 4
@L2CAP_EV_RECV_SREJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"sframe reqseq %d, final %d, poll %d, super %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Trailing bytes: %d in sframe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @l2cap_data_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_data_rcv(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.l2cap_ctrl* %13, %struct.l2cap_ctrl** %6, align 8
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @__unpack_control(%struct.l2cap_chan* %14, %struct.sk_buff* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @l2cap_check_fcs(%struct.l2cap_chan* %20, %struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %208

25:                                               ; preds = %2
  %26 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %27 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %32 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @L2CAP_SAR_START, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @L2CAP_SDULEN_SIZE, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %36, %30, %25
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @L2CAP_FCS_SIZE, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %58 = load i32, i32* @ECONNRESET, align 4
  %59 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %57, i32 %58)
  br label %208

60:                                               ; preds = %50
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %62 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @L2CAP_MODE_STREAMING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66, %60
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %74 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i64 @sk_filter(i32 %75, %struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %208

80:                                               ; preds = %72, %66
  %81 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %82 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %136, label %85

85:                                               ; preds = %80
  %86 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %87 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %90 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %93 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %96 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @BT_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %88, i64 %91, i64 %94, i64 %97)
  %99 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %100 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %85
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %105 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @L2CAP_TX_STATE_WAIT_F, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %208

110:                                              ; preds = %103, %85
  %111 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %112 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @L2CAP_MODE_STREAMING, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* @L2CAP_EV_RECV_IFRAME, align 4
  store i32 %117, i32* %8, align 4
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %119 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @l2cap_rx(%struct.l2cap_chan* %118, %struct.l2cap_ctrl* %119, %struct.sk_buff* %120, i32 %121)
  store i32 %122, i32* %9, align 4
  br label %128

123:                                              ; preds = %110
  %124 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %125 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @l2cap_stream_rx(%struct.l2cap_chan* %124, %struct.l2cap_ctrl* %125, %struct.sk_buff* %126)
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %123, %116
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %133 = load i32, i32* @ECONNRESET, align 4
  %134 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %128
  br label %207

136:                                              ; preds = %80
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %138 = load i32, i32* @L2CAP_EV_RECV_RR, align 4
  store i32 %138, i32* %137, align 4
  %139 = getelementptr inbounds i32, i32* %137, i64 1
  %140 = load i32, i32* @L2CAP_EV_RECV_REJ, align 4
  store i32 %140, i32* %139, align 4
  %141 = getelementptr inbounds i32, i32* %139, i64 1
  %142 = load i32, i32* @L2CAP_EV_RECV_RNR, align 4
  store i32 %142, i32* %141, align 4
  %143 = getelementptr inbounds i32, i32* %141, i64 1
  %144 = load i32, i32* @L2CAP_EV_RECV_SREJ, align 4
  store i32 %144, i32* %143, align 4
  %145 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %146 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @L2CAP_MODE_STREAMING, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %136
  br label %208

151:                                              ; preds = %136
  %152 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %153 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %156 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %159 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %162 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @BT_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %154, i64 %157, i64 %160, i64 %163)
  %165 = load i64, i64* %7, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %151
  %168 = load i64, i64* %7, align 8
  %169 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %168)
  %170 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %171 = load i32, i32* @ECONNRESET, align 4
  %172 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %170, i32 %171)
  br label %208

173:                                              ; preds = %151
  %174 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %175 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %180 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %185 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @L2CAP_TX_STATE_WAIT_F, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183, %178
  br label %208

190:                                              ; preds = %183, %173
  %191 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %192 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %8, align 4
  %196 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %197 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @l2cap_rx(%struct.l2cap_chan* %196, %struct.l2cap_ctrl* %197, %struct.sk_buff* %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %190
  %203 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %204 = load i32, i32* @ECONNRESET, align 4
  %205 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %190
  br label %207

207:                                              ; preds = %206, %135
  store i32 0, i32* %3, align 4
  br label %211

208:                                              ; preds = %189, %167, %150, %109, %79, %56, %24
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = call i32 @kfree_skb(%struct.sk_buff* %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %208, %207
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @__unpack_control(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i64 @l2cap_check_fcs(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i64 @sk_filter(i32, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @l2cap_rx(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_stream_rx(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*) #1

declare dso_local i32 @BT_ERR(i8*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
