; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_ertm_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_ertm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i32, i32, %struct.sk_buff*, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.l2cap_ctrl = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.l2cap_ctrl }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_XMIT = common dso_local global i64 0, align 8
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@L2CAP_FCS_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Sent txseq %u\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Sent %d, %u unacked, %u in ERTM queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*)* @l2cap_ertm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_ertm_send(%struct.l2cap_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %10 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %9)
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BT_CONNECTED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOTCONN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %171

19:                                               ; preds = %1
  %20 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 10
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %171

26:                                               ; preds = %19
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = call i64 @__chan_is_moving(%struct.l2cap_chan* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %171

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %153, %31
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 5
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %39 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @L2CAP_TX_STATE_XMIT, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %45, %37, %32
  %52 = phi i1 [ false, %37 ], [ false, %32 ], [ %50, %45 ]
  br i1 %52, label %53, label %161

53:                                               ; preds = %51
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %55 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %54, i32 0, i32 5
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store %struct.l2cap_ctrl* %63, %struct.l2cap_ctrl** %6, align 8
  %64 = load i32, i32* @CONN_SEND_FBIT, align 4
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 10
  %67 = call i64 @test_and_clear_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %71 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %53
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %74 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %77 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %79 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %82 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %84 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %87 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %89 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @__pack_control(%struct.l2cap_chan* %88, %struct.l2cap_ctrl* %89, %struct.sk_buff* %90)
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %93 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %72
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @crc16(i32 0, i32* %101, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = load i32, i32* @L2CAP_FCS_SIZE, align 4
  %109 = call i32 @skb_put(%struct.sk_buff* %107, i32 %108)
  %110 = call i32 @put_unaligned_le16(i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %97, %72
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %112, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %5, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %161

118:                                              ; preds = %111
  %119 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %120 = call i32 @__set_retrans_timer(%struct.l2cap_chan* %119)
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %122 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %123 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @__next_seq(%struct.l2cap_chan* %121, i32 %124)
  %126 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %127 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %129 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %133 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %139 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %138, i32 0, i32 3
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = call i64 @skb_queue_is_last(i32* %139, %struct.sk_buff* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %118
  %144 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %145 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %144, i32 0, i32 5
  store %struct.sk_buff* null, %struct.sk_buff** %145, align 8
  br label %153

146:                                              ; preds = %118
  %147 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %148 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %147, i32 0, i32 3
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = call %struct.sk_buff* @skb_queue_next(i32* %148, %struct.sk_buff* %149)
  %151 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %152 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %151, i32 0, i32 5
  store %struct.sk_buff* %150, %struct.sk_buff** %152, align 8
  br label %153

153:                                              ; preds = %146, %143
  %154 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = call i32 @l2cap_do_send(%struct.l2cap_chan* %154, %struct.sk_buff* %155)
  %157 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %158 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %32

161:                                              ; preds = %117, %51
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %164 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %167 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %166, i32 0, i32 3
  %168 = call i32 @skb_queue_len(i32* %167)
  %169 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %165, i32 %168)
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %161, %30, %25, %16
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__pack_control(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*) #1

declare dso_local i32 @crc16(i32, i32*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @__set_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__next_seq(%struct.l2cap_chan*, i32) #1

declare dso_local i64 @skb_queue_is_last(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_do_send(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
