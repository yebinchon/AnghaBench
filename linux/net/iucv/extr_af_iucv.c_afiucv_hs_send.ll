; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_hs_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_hs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_message = type { i32 }
%struct.sock = type { i64 }
%struct.sk_buff = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iucv_sock = type { i32, i32, i32, %struct.TYPE_3__*, %struct.iucv_message*, %struct.iucv_message*, %struct.iucv_message*, %struct.iucv_message* }
%struct.af_iucv_trans_hdr = type { i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32 }

@ETH_P_AF_IUCV = common dso_local global i32 0, align 4
@AF_IUCV_FLAG_SYN = common dso_local global i64 0, align 8
@AF_IUCV_FLAG_WIN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_message*, %struct.sock*, %struct.sk_buff*, i64)* @afiucv_hs_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_hs_send(%struct.iucv_message* %0, %struct.sock* %1, %struct.sk_buff* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iucv_message*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iucv_sock*, align 8
  %11 = alloca %struct.af_iucv_trans_hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iucv_message* %0, %struct.iucv_message** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %15)
  store %struct.iucv_sock* %16, %struct.iucv_sock** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call %struct.af_iucv_trans_hdr* @skb_push(%struct.sk_buff* %17, i32 64)
  store %struct.af_iucv_trans_hdr* %18, %struct.af_iucv_trans_hdr** %11, align 8
  %19 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %20 = call i32 @memset(%struct.af_iucv_trans_hdr* %19, i32 0, i32 64)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i32 @skb_reset_network_header(%struct.sk_buff* %21)
  %23 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %24 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %25 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @AF_IUCV_FLAG_SYN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %36 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %39 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %66

40:                                               ; preds = %4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @AF_IUCV_FLAG_WIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %49 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %48, i32 0, i32 1
  %50 = call i32 @atomic_read(i32* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %58 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AF_IUCV_FLAG_WIN, align 8
  %61 = or i64 %59, %60
  %62 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %47
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %71 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %70, i32 0, i32 7
  %72 = load %struct.iucv_message*, %struct.iucv_message** %71, align 8
  %73 = call i32 @memcpy(i32* %69, %struct.iucv_message* %72, i32 8)
  %74 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %75 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %78 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %77, i32 0, i32 6
  %79 = load %struct.iucv_message*, %struct.iucv_message** %78, align 8
  %80 = call i32 @memcpy(i32* %76, %struct.iucv_message* %79, i32 8)
  %81 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %82 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %85 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %84, i32 0, i32 5
  %86 = load %struct.iucv_message*, %struct.iucv_message** %85, align 8
  %87 = call i32 @memcpy(i32* %83, %struct.iucv_message* %86, i32 8)
  %88 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %89 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %92 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %91, i32 0, i32 4
  %93 = load %struct.iucv_message*, %struct.iucv_message** %92, align 8
  %94 = call i32 @memcpy(i32* %90, %struct.iucv_message* %93, i32 8)
  %95 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %96 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ASCEBC(i32* %97, i32 8)
  %99 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %100 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @ASCEBC(i32* %101, i32 8)
  %103 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %104 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @ASCEBC(i32* %105, i32 8)
  %107 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %108 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @ASCEBC(i32* %109, i32 8)
  %111 = load %struct.iucv_message*, %struct.iucv_message** %6, align 8
  %112 = icmp ne %struct.iucv_message* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %66
  %114 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %11, align 8
  %115 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %114, i32 0, i32 3
  %116 = load %struct.iucv_message*, %struct.iucv_message** %6, align 8
  %117 = call i32 @memcpy(i32* %115, %struct.iucv_message* %116, i32 4)
  br label %118

118:                                              ; preds = %113, %66
  %119 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %120 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 2
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = icmp ne %struct.TYPE_3__* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %118
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %13, align 4
  br label %231

131:                                              ; preds = %118
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 2
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @dev_hard_header(%struct.sk_buff* %132, %struct.TYPE_3__* %135, i32 %136, i32* null, i32* null, i64 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 2
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @IFF_UP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %131
  %150 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = call i32 @netif_carrier_ok(%struct.TYPE_3__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149, %131
  %156 = load i32, i32* @ENETDOWN, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %13, align 4
  br label %231

158:                                              ; preds = %149
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %161, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %158
  %169 = load %struct.sock*, %struct.sock** %7, align 8
  %170 = getelementptr inbounds %struct.sock, %struct.sock* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SOCK_SEQPACKET, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* @EMSGSIZE, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %13, align 4
  br label %231

177:                                              ; preds = %168
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 2
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @skb_trim(%struct.sk_buff* %178, i64 %183)
  br label %185

185:                                              ; preds = %177, %158
  %186 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %187 = call i32 @cpu_to_be16(i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = call i32 @__skb_header_release(%struct.sk_buff* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = load i32, i32* @GFP_ATOMIC, align 4
  %194 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %192, i32 %193)
  store %struct.sk_buff* %194, %struct.sk_buff** %12, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %196 = icmp ne %struct.sk_buff* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %185
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %13, align 4
  br label %231

200:                                              ; preds = %185
  %201 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %202 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %201, i32 0, i32 2
  %203 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %204 = call i32 @skb_queue_tail(i32* %202, %struct.sk_buff* %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %206 = call i32 @dev_queue_xmit(%struct.sk_buff* %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @net_xmit_eval(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %200
  %211 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %212 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %213 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %212, i32 0, i32 2
  %214 = call i32 @skb_unlink(%struct.sk_buff* %211, i32* %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %216 = call i32 @kfree_skb(%struct.sk_buff* %215)
  br label %228

217:                                              ; preds = %200
  %218 = load i32, i32* %14, align 4
  %219 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %220 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %219, i32 0, i32 1
  %221 = call i32 @atomic_sub(i32 %218, i32* %220)
  %222 = load %struct.iucv_sock*, %struct.iucv_sock** %10, align 8
  %223 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %222, i32 0, i32 1
  %224 = call i32 @atomic_read(i32* %223)
  %225 = icmp slt i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @WARN_ON(i32 %226)
  br label %228

228:                                              ; preds = %217, %210
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @net_xmit_eval(i32 %229)
  store i32 %230, i32* %5, align 4
  br label %235

231:                                              ; preds = %197, %174, %155, %128
  %232 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %233 = call i32 @kfree_skb(%struct.sk_buff* %232)
  %234 = load i32, i32* %13, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local %struct.af_iucv_trans_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.af_iucv_trans_hdr*, i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.iucv_message*, i32) #1

declare dso_local i32 @ASCEBC(i32*, i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.TYPE_3__*, i32, i32*, i32*, i64) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_3__*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @__skb_header_release(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
