; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i64, i32, i64, i64, i64, i64, i64, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, %struct.net_device*, i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@ULLONG_MAX = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ERROR: couldn't allocate skb in fill_packet\0A\00", align 1
@M_NETIF_RECEIVE = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@M_QUEUE_XMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s xmit error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*)* @pktgen_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktgen_xmit(%struct.pktgen_dev* %0) #0 {
  %2 = alloca %struct.pktgen_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %2, align 8
  %8 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %8, i32 0, i32 15
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @READ_ONCE(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %12, i32 0, i32 14
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netif_carrier_ok(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %1
  %24 = phi i1 [ true, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %30 = call i32 @pktgen_stop_device(%struct.pktgen_dev* %29)
  br label %343

31:                                               ; preds = %23
  %32 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ULLONG_MAX, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = call i32 (...) @ktime_get()
  %42 = load i32, i32* @ULONG_MAX, align 4
  %43 = call i32 @ktime_add_ns(i32 %41, i32 %42)
  %44 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %45 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  br label %343

46:                                               ; preds = %31
  %47 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %48 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %47, i32 0, i32 7
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %51
  %57 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %58 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %62 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %56, %46
  %66 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %66, i32 0, i32 7
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %72 = call %struct.sk_buff* @fill_packet(%struct.net_device* %70, %struct.pktgen_dev* %71)
  %73 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %74 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %73, i32 0, i32 7
  store %struct.sk_buff* %72, %struct.sk_buff** %74, align 8
  %75 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %76 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %75, i32 0, i32 7
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  %78 = icmp eq %struct.sk_buff* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 (...) @schedule()
  %82 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %83 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %343

86:                                               ; preds = %65
  %87 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %88 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %87, i32 0, i32 7
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %93 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 8
  %94 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %95 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %86, %56, %51
  %97 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %98 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %103 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %108 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %109 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @spin(%struct.pktgen_dev* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %101, %96
  %113 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %114 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @M_NETIF_RECEIVE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %174

118:                                              ; preds = %112
  %119 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %120 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %119, i32 0, i32 7
  %121 = load %struct.sk_buff*, %struct.sk_buff** %120, align 8
  store %struct.sk_buff* %121, %struct.sk_buff** %6, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @eth_type_trans(%struct.sk_buff* %122, i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = call i32 @refcount_add(i32 %129, i32* %131)
  %133 = call i32 (...) @local_bh_disable()
  br label %134

134:                                              ; preds = %169, %118
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = call i32 @netif_receive_skb(%struct.sk_buff* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @NET_RX_DROP, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %142 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %140, %134
  %146 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %147 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %151 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = call i32 @refcount_read(i32* %155)
  %157 = load i32, i32* %3, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %145
  %160 = load i32, i32* %3, align 4
  %161 = sub i32 %160, 1
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = call i32 @refcount_sub_and_test(i32 %161, i32* %163)
  %165 = call i32 @WARN_ON(i32 %164)
  br label %173

166:                                              ; preds = %145
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = call i32 @skb_reset_tc(%struct.sk_buff* %167)
  br label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %3, align 4
  %171 = add i32 %170, -1
  store i32 %171, i32* %3, align 4
  %172 = icmp ugt i32 %171, 0
  br i1 %172, label %134, label %173

173:                                              ; preds = %169, %159
  br label %324

174:                                              ; preds = %112
  %175 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %176 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @M_QUEUE_XMIT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %220

180:                                              ; preds = %174
  %181 = call i32 (...) @local_bh_disable()
  %182 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %183 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %182, i32 0, i32 7
  %184 = load %struct.sk_buff*, %struct.sk_buff** %183, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  %186 = call i32 @refcount_inc(i32* %185)
  %187 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %188 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %187, i32 0, i32 7
  %189 = load %struct.sk_buff*, %struct.sk_buff** %188, align 8
  %190 = call i32 @dev_queue_xmit(%struct.sk_buff* %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  switch i32 %191, label %209 [
    i32 128, label %192
    i32 129, label %208
    i32 130, label %208
    i32 132, label %208
  ]

192:                                              ; preds = %180
  %193 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %194 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %194, align 8
  %197 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %198 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %197, i32 0, i32 12
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %202 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %201, i32 0, i32 10
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %205 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %219

208:                                              ; preds = %180, %180, %180
  br label %209

209:                                              ; preds = %180, %208
  %210 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %211 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %215 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %209, %192
  br label %324

220:                                              ; preds = %174
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.net_device*, %struct.net_device** %4, align 8
  %223 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %224 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %223, i32 0, i32 7
  %225 = load %struct.sk_buff*, %struct.sk_buff** %224, align 8
  %226 = call %struct.netdev_queue* @skb_get_tx_queue(%struct.net_device* %222, %struct.sk_buff* %225)
  store %struct.netdev_queue* %226, %struct.netdev_queue** %5, align 8
  %227 = call i32 (...) @local_bh_disable()
  %228 = load %struct.net_device*, %struct.net_device** %4, align 8
  %229 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %230 = call i32 (...) @smp_processor_id()
  %231 = call i32 @HARD_TX_LOCK(%struct.net_device* %228, %struct.netdev_queue* %229, i32 %230)
  %232 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %233 = call i32 @netif_xmit_frozen_or_drv_stopped(%struct.netdev_queue* %232)
  %234 = call i64 @unlikely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %221
  store i32 132, i32* %7, align 4
  %237 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %238 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %237, i32 0, i32 1
  store i32 0, i32* %238, align 8
  br label %320

239:                                              ; preds = %221
  %240 = load i32, i32* %3, align 4
  %241 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %242 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %241, i32 0, i32 7
  %243 = load %struct.sk_buff*, %struct.sk_buff** %242, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = call i32 @refcount_add(i32 %240, i32* %244)
  br label %246

246:                                              ; preds = %282, %239
  %247 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %248 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %247, i32 0, i32 7
  %249 = load %struct.sk_buff*, %struct.sk_buff** %248, align 8
  %250 = load %struct.net_device*, %struct.net_device** %4, align 8
  %251 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %252 = load i32, i32* %3, align 4
  %253 = add i32 %252, -1
  store i32 %253, i32* %3, align 4
  %254 = icmp ugt i32 %253, 0
  %255 = zext i1 %254 to i32
  %256 = call i32 @netdev_start_xmit(%struct.sk_buff* %249, %struct.net_device* %250, %struct.netdev_queue* %251, i32 %255)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  switch i32 %257, label %289 [
    i32 131, label %258
    i32 129, label %284
    i32 130, label %284
    i32 132, label %299
  ]

258:                                              ; preds = %246
  %259 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %260 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %259, i32 0, i32 1
  store i32 1, i32* %260, align 8
  %261 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %262 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 %263, 1
  store i64 %264, i64* %262, align 8
  %265 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %266 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %265, i32 0, i32 12
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  %269 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %270 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %273 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load i32, i32* %3, align 4
  %277 = icmp ugt i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %258
  %279 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %280 = call i32 @netif_xmit_frozen_or_drv_stopped(%struct.netdev_queue* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  br label %246

283:                                              ; preds = %278, %258
  br label %307

284:                                              ; preds = %246, %246
  %285 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %286 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %285, i32 0, i32 8
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  br label %307

289:                                              ; preds = %246
  %290 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %291 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %7, align 4
  %294 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %292, i32 %293)
  %295 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %296 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %246, %289
  %300 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %301 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %300, i32 0, i32 7
  %302 = load %struct.sk_buff*, %struct.sk_buff** %301, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 0
  %304 = call i32 @refcount_dec(i32* %303)
  %305 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %306 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %305, i32 0, i32 1
  store i32 0, i32* %306, align 8
  br label %307

307:                                              ; preds = %299, %284, %283
  %308 = load i32, i32* %3, align 4
  %309 = call i64 @unlikely(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %307
  %312 = load i32, i32* %3, align 4
  %313 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %314 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %313, i32 0, i32 7
  %315 = load %struct.sk_buff*, %struct.sk_buff** %314, align 8
  %316 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %315, i32 0, i32 0
  %317 = call i32 @refcount_sub_and_test(i32 %312, i32* %316)
  %318 = call i32 @WARN_ON(i32 %317)
  br label %319

319:                                              ; preds = %311, %307
  br label %320

320:                                              ; preds = %319, %236
  %321 = load %struct.net_device*, %struct.net_device** %4, align 8
  %322 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %323 = call i32 @HARD_TX_UNLOCK(%struct.net_device* %321, %struct.netdev_queue* %322)
  br label %324

324:                                              ; preds = %320, %219, %173
  %325 = call i32 (...) @local_bh_enable()
  %326 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %327 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %324
  %331 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %332 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %331, i32 0, i32 5
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %335 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %334, i32 0, i32 6
  %336 = load i64, i64* %335, align 8
  %337 = icmp sge i64 %333, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %330
  %339 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %340 = call i32 @pktgen_wait_for_skb(%struct.pktgen_dev* %339)
  %341 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %342 = call i32 @pktgen_stop_device(%struct.pktgen_dev* %341)
  br label %343

343:                                              ; preds = %28, %40, %79, %338, %330, %324
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @pktgen_stop_device(%struct.pktgen_dev*) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @fill_packet(%struct.net_device*, %struct.pktgen_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin(%struct.pktgen_dev*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_sub_and_test(i32, i32*) #1

declare dso_local i32 @skb_reset_tc(%struct.sk_buff*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32, i32) #1

declare dso_local %struct.netdev_queue* @skb_get_tx_queue(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @HARD_TX_LOCK(%struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_xmit_frozen_or_drv_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_start_xmit(%struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @HARD_TX_UNLOCK(%struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @pktgen_wait_for_skb(%struct.pktgen_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
