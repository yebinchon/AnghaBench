; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_mpc_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_mpc_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i64 }
%struct.sk_buff = type { i8*, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, %struct.atm_vcc* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mpoa_client = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, %struct.TYPE_10__* (i32, %struct.mpoa_client*)* }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"(%s) null skb, closing VCC\0A\00", align 1
@llc_snap_mpoa_ctrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"(%s) control packet arrived\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"(%s) unknown MPC\0A\00", align 1
@llc_snap_mpoa_data_tagged = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"(%s) tagged data packet arrived\0A\00", align 1
@llc_snap_mpoa_data = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"(%s) Unsupported non-tagged data packet arrived.  Purging\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"(%s) garbage arrived, purging\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"mpoa: (%s) Didn't find egress cache entry, tag = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"(%s) egress SVC in use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @mpc_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_push(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.mpoa_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ddprintk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @mpc_vcc_close(%struct.atm_vcc* %27, %struct.net_device* %28)
  br label %209

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 3
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @memcmp(i8* %36, i32* @llc_snap_mpoa_ctrl, i32 4)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %41 = call %struct.sock* @sk_atm(%struct.atm_vcc* %40)
  store %struct.sock* %41, %struct.sock** %11, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.sock*, %struct.sock** %11, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_queue_tail(i32* %47, %struct.sk_buff* %48)
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %51, align 8
  %53 = load %struct.sock*, %struct.sock** %11, align 8
  %54 = call i32 %52(%struct.sock* %53)
  br label %209

55:                                               ; preds = %30
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @atm_return(%struct.atm_vcc* %56, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device* %61)
  store %struct.mpoa_client* %62, %struct.mpoa_client** %8, align 8
  %63 = load %struct.mpoa_client*, %struct.mpoa_client** %8, align 8
  %64 = icmp eq %struct.mpoa_client* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %209

70:                                               ; preds = %55
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @memcmp(i8* %73, i32* @llc_snap_mpoa_data_tagged, i32 4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ddprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %101

81:                                               ; preds = %70
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @memcmp(i8* %84, i32* @llc_snap_mpoa_data, i32 4)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %92)
  br label %209

94:                                               ; preds = %81
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %99)
  br label %209

101:                                              ; preds = %76
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load %struct.mpoa_client*, %struct.mpoa_client** %8, align 8
  %110 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__* (i32, %struct.mpoa_client*)*, %struct.TYPE_10__* (i32, %struct.mpoa_client*)** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.mpoa_client*, %struct.mpoa_client** %8, align 8
  %116 = call %struct.TYPE_10__* %113(i32 %114, %struct.mpoa_client* %115)
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %7, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = icmp eq %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %101
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %126 = call i32 @purge_egress_shortcut(%struct.atm_vcc* %125, i32* null)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %127)
  br label %209

129:                                              ; preds = %101
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load %struct.atm_vcc*, %struct.atm_vcc** %131, align 8
  %133 = icmp eq %struct.atm_vcc* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store %struct.atm_vcc* %135, %struct.atm_vcc** %137, align 8
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %134, %129
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = call i32 @skb_pull(%struct.sk_buff* %143, i32 8)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %145, i32 %149)
  store %struct.sk_buff* %150, %struct.sk_buff** %6, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = icmp eq %struct.sk_buff* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %142
  %156 = load %struct.mpoa_client*, %struct.mpoa_client** %8, align 8
  %157 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %159, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = call i32 %160(%struct.TYPE_10__* %161)
  br label %209

163:                                              ; preds = %142
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @skb_push(%struct.sk_buff* %164, i32 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %170, i32 %174, i32 %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %181 = load %struct.net_device*, %struct.net_device** %5, align 8
  %182 = call i32 @eth_type_trans(%struct.sk_buff* %180, %struct.net_device* %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = call i32 @skb_reset_network_header(%struct.sk_buff* %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %188 = call %struct.TYPE_11__* @ip_hdr(%struct.sk_buff* %187)
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.mpoa_client*, %struct.mpoa_client** %8, align 8
  %198 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %197, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %203 = call i32 %201(%struct.TYPE_10__* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %205 = call i32 @ATM_SKB(%struct.sk_buff* %204)
  %206 = call i32 @memset(i32 %205, i32 0, i32 4)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %208 = call i32 @netif_rx(%struct.sk_buff* %207)
  br label %209

209:                                              ; preds = %163, %155, %119, %94, %87, %65, %39, %22
  ret void
}

declare dso_local i32 @ddprintk(i8*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @mpc_vcc_close(%struct.atm_vcc*, %struct.net_device*) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local %struct.mpoa_client* @find_mpc_by_lec(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @purge_egress_shortcut(%struct.atm_vcc*, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
