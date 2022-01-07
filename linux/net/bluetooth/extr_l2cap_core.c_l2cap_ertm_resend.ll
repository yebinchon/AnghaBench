; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_ertm_resend.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_ertm_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, %struct.l2cap_chan*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.l2cap_ctrl = type { i32, %struct.l2cap_chan*, i32, %struct.l2cap_chan* }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.l2cap_ctrl }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@L2CAP_SEQ_LIST_CLEAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Error: Can't retransmit seq %d, frame missing\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Retry limit exceeded (%d)\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i64 0, align 8
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@L2CAP_FCS_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Resent txseq %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_ertm_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_ertm_resend(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_ctrl, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %8)
  %10 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 5
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %169

16:                                               ; preds = %1
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %18 = call i64 @__chan_is_moving(%struct.l2cap_chan* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %169

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %157, %39, %21
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %169

29:                                               ; preds = %22
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %31 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %30, i32 0, i32 4
  %32 = call %struct.l2cap_chan* @l2cap_seq_list_pop(%struct.TYPE_4__* %31)
  store %struct.l2cap_chan* %32, %struct.l2cap_chan** %6, align 8
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 7
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %36 = call %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32* %34, %struct.l2cap_chan* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %41 = call i32 @BT_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %40)
  br label %22

42:                                               ; preds = %29
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %45, i32 0, i32 3
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %46, align 8
  %48 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %47, i32 1
  store %struct.l2cap_chan* %48, %struct.l2cap_chan** %46, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = bitcast %struct.l2cap_ctrl* %3 to i8*
  %53 = bitcast %struct.l2cap_ctrl* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 32, i1 false)
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %55 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %54, i32 0, i32 6
  %56 = load %struct.l2cap_chan*, %struct.l2cap_chan** %55, align 8
  %57 = icmp ne %struct.l2cap_chan* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %42
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call %struct.TYPE_5__* @bt_cb(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %61, i32 0, i32 3
  %63 = load %struct.l2cap_chan*, %struct.l2cap_chan** %62, align 8
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %65 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %64, i32 0, i32 6
  %66 = load %struct.l2cap_chan*, %struct.l2cap_chan** %65, align 8
  %67 = icmp ugt %struct.l2cap_chan* %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 6
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %70, align 8
  %72 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %71)
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %74 = load i32, i32* @ECONNRESET, align 4
  %75 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %73, i32 %74)
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %77 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %76, i32 0, i32 4
  %78 = call i32 @l2cap_seq_list_clear(%struct.TYPE_4__* %77)
  br label %169

79:                                               ; preds = %58, %42
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %81 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* @CONN_SEND_FBIT, align 4
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %86 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %85, i32 0, i32 5
  %87 = call i64 @test_and_clear_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %93

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i64 @skb_cloned(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %98, i32 %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %5, align 8
  br label %105

101:                                              ; preds = %93
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %102, i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %5, align 8
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = icmp ne %struct.sk_buff* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %110 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %109, i32 0, i32 4
  %111 = call i32 @l2cap_seq_list_clear(%struct.TYPE_4__* %110)
  br label %169

112:                                              ; preds = %105
  %113 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 3
  %116 = call i64 @test_bit(i32 %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = call i32 @__pack_extended_control(%struct.l2cap_ctrl* %3)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @put_unaligned_le32(i32 %119, i64 %124)
  br label %134

126:                                              ; preds = %112
  %127 = call %struct.l2cap_chan* @__pack_enhanced_control(%struct.l2cap_ctrl* %3)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @put_unaligned_le16(%struct.l2cap_chan* %127, i64 %132)
  br label %134

134:                                              ; preds = %126, %118
  %135 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %136 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @L2CAP_FCS_SIZE, align 8
  %149 = sub nsw i64 %147, %148
  %150 = call %struct.l2cap_chan* @crc16(i32 0, i32* %144, i64 %149)
  store %struct.l2cap_chan* %150, %struct.l2cap_chan** %7, align 8
  %151 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = call i64 @skb_tail_pointer(%struct.sk_buff* %152)
  %154 = load i64, i64* @L2CAP_FCS_SIZE, align 8
  %155 = sub nsw i64 %153, %154
  %156 = call i32 @put_unaligned_le16(%struct.l2cap_chan* %151, i64 %155)
  br label %157

157:                                              ; preds = %140, %134
  %158 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = call i32 @l2cap_do_send(%struct.l2cap_chan* %158, %struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %3, i32 0, i32 1
  %162 = load %struct.l2cap_chan*, %struct.l2cap_chan** %161, align 8
  %163 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.l2cap_chan* %162)
  %164 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %165 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %168 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  br label %22

169:                                              ; preds = %15, %20, %108, %68, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local %struct.l2cap_chan* @l2cap_seq_list_pop(%struct.TYPE_4__*) #1

declare dso_local %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32*, %struct.l2cap_chan*) #1

declare dso_local %struct.TYPE_5__* @bt_cb(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_seq_list_clear(%struct.TYPE_4__*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i64) #1

declare dso_local i32 @__pack_extended_control(%struct.l2cap_ctrl*) #1

declare dso_local i32 @put_unaligned_le16(%struct.l2cap_chan*, i64) #1

declare dso_local %struct.l2cap_chan* @__pack_enhanced_control(%struct.l2cap_ctrl*) #1

declare dso_local %struct.l2cap_chan* @crc16(i32, i32*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_do_send(%struct.l2cap_chan*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
