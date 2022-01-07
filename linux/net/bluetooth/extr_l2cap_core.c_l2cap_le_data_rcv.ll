; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_data_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_data_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, %struct.sk_buff*, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"No credits to receive LE L2CAP data\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Too big LE L2CAP PDU\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"rx_credits %u -> %u\00", align 1
@L2CAP_SDULEN_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Start of new SDU. sdu_len %u skb->len %u imtu %u\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Too big LE L2CAP SDU length received\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Too much LE L2CAP data received\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"chan->mps %u -> %u\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"SDU fragment. chan->sdu->len %u skb->len %u chan->sdu_len %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @l2cap_le_data_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_data_rcv(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %16 = load i32, i32* @ECONNRESET, align 4
  %17 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %15, i32 %16)
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %219

20:                                               ; preds = %2
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = call i32 @BT_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %219

32:                                               ; preds = %20
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i64, i64, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %43)
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %51 = call i32 @l2cap_chan_le_send_credits(%struct.l2cap_chan* %50)
  br label %52

52:                                               ; preds = %49, %32
  store i32 0, i32* %6, align 4
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %138, label %57

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @get_unaligned_le16(i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i64, i64* @L2CAP_SDULEN_SIZE, align 8
  %64 = call i32 @skb_pull(%struct.sk_buff* %62, i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, i64, i64, ...) @BT_DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %65, i64 %68, i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %75 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %57
  %79 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EMSGSIZE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %202

82:                                               ; preds = %57
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %202

92:                                               ; preds = %82
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @l2cap_le_recv(%struct.l2cap_chan* %99, %struct.sk_buff* %100)
  store i32 %101, i32* %3, align 4
  br label %219

102:                                              ; preds = %92
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %105 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %104, i32 0, i32 4
  store %struct.sk_buff* %103, %struct.sk_buff** %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %108 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %111 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %110, i32 0, i32 3
  store %struct.sk_buff* %109, %struct.sk_buff** %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @L2CAP_SDULEN_SIZE, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %118 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %102
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @L2CAP_SDULEN_SIZE, align 8
  %126 = add nsw i64 %124, %125
  store i64 %126, i64* %8, align 8
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %128 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 (i8*, i64, i64, ...) @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %129, i64 %130)
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %134 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %136 = call i32 @l2cap_chan_le_send_credits(%struct.l2cap_chan* %135)
  br label %137

137:                                              ; preds = %121, %102
  store i32 0, i32* %3, align 4
  br label %219

138:                                              ; preds = %52
  %139 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %140 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %139, i32 0, i32 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %140, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %148 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8*, i64, i64, ...) @BT_DBG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %143, i64 %146, i64 %149)
  %151 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %152 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %151, i32 0, i32 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %152, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %161 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %138
  %165 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %202

168:                                              ; preds = %138
  %169 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %170 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %169, i32 0, i32 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %170, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %174 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %173, i32 0, i32 3
  %175 = call i32 @append_skb_frag(%struct.sk_buff* %171, %struct.sk_buff* %172, %struct.sk_buff** %174)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %176 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %177 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %176, i32 0, i32 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %177, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %182 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %168
  %186 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %187 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %188 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %187, i32 0, i32 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %188, align 8
  %190 = call i32 @l2cap_le_recv(%struct.l2cap_chan* %186, %struct.sk_buff* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %185
  %194 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %195 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %194, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %195, align 8
  %196 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %197 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %196, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %197, align 8
  %198 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %199 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %198, i32 0, i32 1
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %193, %185
  br label %201

201:                                              ; preds = %200, %168
  br label %202

202:                                              ; preds = %201, %164, %88, %78
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %207 = call i32 @kfree_skb(%struct.sk_buff* %206)
  %208 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %209 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %208, i32 0, i32 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %209, align 8
  %211 = call i32 @kfree_skb(%struct.sk_buff* %210)
  %212 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %213 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %212, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %213, align 8
  %214 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %215 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %214, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %215, align 8
  %216 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %217 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %205, %202
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %218, %137, %98, %28, %13
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i64, i64, ...) #1

declare dso_local i32 @l2cap_chan_le_send_credits(%struct.l2cap_chan*) #1

declare dso_local i64 @get_unaligned_le16(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @l2cap_le_recv(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @append_skb_frag(%struct.sk_buff*, %struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
