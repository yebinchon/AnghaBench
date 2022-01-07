; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_streaming_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_streaming_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.l2cap_ctrl = type { i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.l2cap_ctrl }

@.str = private unnamed_addr constant [17 x i8] c"chan %p, skbs %p\00", align 1
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@L2CAP_FCS_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Sent txseq %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.sk_buff_head*)* @l2cap_streaming_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_streaming_send(%struct.l2cap_chan* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %10 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %8, %struct.sk_buff_head* %9)
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = call i64 @__chan_is_moving(%struct.l2cap_chan* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 3
  %19 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %16, i32* %18)
  br label %20

20:                                               ; preds = %67, %15
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 3
  %23 = call i32 @skb_queue_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %88

26:                                               ; preds = %20
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 3
  %29 = call %struct.sk_buff* @skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.l2cap_ctrl* %36, %struct.l2cap_ctrl** %6, align 8
  %37 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %43 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %45 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @__pack_control(%struct.l2cap_chan* %44, %struct.l2cap_ctrl* %45, %struct.sk_buff* %46)
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %26
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @crc16(i32 0, i32* %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* @L2CAP_FCS_SIZE, align 4
  %65 = call i32 @skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = call i32 @put_unaligned_le16(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %53, %26
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @l2cap_do_send(%struct.l2cap_chan* %68, %struct.sk_buff* %69)
  %71 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %72 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.l2cap_chan*
  %76 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %75)
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %79 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__next_seq(%struct.l2cap_chan* %77, i32 %80)
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %83 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %85 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %20

88:                                               ; preds = %14, %20
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i64 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @__pack_control(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*) #1

declare dso_local i32 @crc16(i32, i32*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_do_send(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @__next_seq(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
