; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_bpdu.c_br_stp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_bpdu.c_br_stp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stp_proto = type { i32 }
%struct.sk_buff = type { i8* }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { i64, i32, i64, %struct.net_bridge*, %struct.TYPE_7__* }
%struct.net_bridge = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.br_config_bpdu = type { i32, i32, i8, i8, i64, i64, i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i32 }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BR_BPDU_GUARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BPDU received on blocked port %u(%s)\0A\00", align 1
@BPDU_TYPE_CONFIG = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"port %u config from %pM (message_age %ul > max_age %ul)\0A\00", align 1
@BPDU_TYPE_TCN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_stp_rcv(%struct.stp_proto* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.stp_proto*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca %struct.net_bridge*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.br_config_bpdu, align 8
  store %struct.stp_proto* %0, %struct.stp_proto** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %354

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %15
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %15
  br label %354

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call %struct.net_bridge_port* @br_port_get_check_rcu(%struct.net_device* %38)
  store %struct.net_bridge_port* %39, %struct.net_bridge_port** %7, align 8
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %41 = icmp ne %struct.net_bridge_port* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %354

43:                                               ; preds = %37
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %45 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %44, i32 0, i32 3
  %46 = load %struct.net_bridge*, %struct.net_bridge** %45, align 8
  store %struct.net_bridge* %46, %struct.net_bridge** %8, align 8
  %47 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %48 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %47, i32 0, i32 1
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %51 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BR_KERNEL_STP, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %350

56:                                               ; preds = %43
  %57 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_UP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  br label %350

66:                                               ; preds = %56
  %67 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %68 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BR_STATE_DISABLED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %350

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %79 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ether_addr_equal(i32 %77, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %350

84:                                               ; preds = %73
  %85 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %86 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BR_BPDU_GUARD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %93 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %94 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %98 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %97, i32 0, i32 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.net_bridge*, i8*, i32, i32, ...) @br_notice(%struct.net_bridge* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %101)
  %103 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %104 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %103)
  br label %350

105:                                              ; preds = %84
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i8* @skb_pull(%struct.sk_buff* %106, i32 3)
  store i8* %107, i8** %9, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @BPDU_TYPE_CONFIG, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %337

115:                                              ; preds = %105
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 @pskb_may_pull(%struct.sk_buff* %116, i32 32)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  br label %350

120:                                              ; preds = %115
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 0
  store i32 %131, i32* %132, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 128
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  %141 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 %144, i8* %148, align 1
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  %151 = load i8, i8* %150, align 1
  %152 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8 %151, i8* %155, align 1
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  %158 = load i8, i8* %157, align 1
  %159 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 %158, i8* %162, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 5
  %165 = load i8, i8* %164, align 1
  %166 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  store i8 %165, i8* %169, align 1
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 6
  %172 = load i8, i8* %171, align 1
  %173 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  store i8 %172, i8* %176, align 1
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 7
  %179 = load i8, i8* %178, align 1
  %180 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  store i8 %179, i8* %183, align 1
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 8
  %186 = load i8, i8* %185, align 1
  %187 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 4
  store i8 %186, i8* %190, align 1
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 9
  %193 = load i8, i8* %192, align 1
  %194 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 9
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 5
  store i8 %193, i8* %197, align 1
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 10
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = shl i32 %201, 24
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 11
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl i32 %206, 16
  %208 = or i32 %202, %207
  %209 = load i8*, i8** %9, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 12
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = or i32 %208, %213
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 13
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = or i32 %214, %218
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 2
  store i8 %220, i8* %221, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 14
  %224 = load i8, i8* %223, align 1
  %225 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  store i8 %224, i8* %228, align 1
  %229 = load i8*, i8** %9, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 15
  %231 = load i8, i8* %230, align 1
  %232 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  store i8 %231, i8* %235, align 1
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 16
  %238 = load i8, i8* %237, align 1
  %239 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  store i8 %238, i8* %242, align 1
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 17
  %245 = load i8, i8* %244, align 1
  %246 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8 %245, i8* %249, align 1
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 18
  %252 = load i8, i8* %251, align 1
  %253 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 2
  store i8 %252, i8* %256, align 1
  %257 = load i8*, i8** %9, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 19
  %259 = load i8, i8* %258, align 1
  %260 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 3
  store i8 %259, i8* %263, align 1
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 20
  %266 = load i8, i8* %265, align 1
  %267 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 4
  store i8 %266, i8* %270, align 1
  %271 = load i8*, i8** %9, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 21
  %273 = load i8, i8* %272, align 1
  %274 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 5
  store i8 %273, i8* %277, align 1
  %278 = load i8*, i8** %9, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 22
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = shl i32 %281, 8
  %283 = load i8*, i8** %9, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 23
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = or i32 %282, %286
  %288 = trunc i32 %287 to i8
  %289 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 3
  store i8 %288, i8* %289, align 1
  %290 = load i8*, i8** %9, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 24
  %292 = call i8* @br_get_ticks(i8* %291)
  %293 = ptrtoint i8* %292 to i64
  %294 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 4
  store i64 %293, i64* %294, align 8
  %295 = load i8*, i8** %9, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 26
  %297 = call i8* @br_get_ticks(i8* %296)
  %298 = ptrtoint i8* %297 to i64
  %299 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 5
  store i64 %298, i64* %299, align 8
  %300 = load i8*, i8** %9, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 28
  %302 = call i8* @br_get_ticks(i8* %301)
  %303 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 7
  store i8* %302, i8** %303, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 30
  %306 = call i8* @br_get_ticks(i8* %305)
  %307 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 6
  store i8* %306, i8** %307, align 8
  %308 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = icmp sgt i64 %309, %311
  br i1 %312, label %313, label %334

313:                                              ; preds = %120
  %314 = call i64 (...) @net_ratelimit()
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %333

316:                                              ; preds = %313
  %317 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %318 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %317, i32 0, i32 3
  %319 = load %struct.net_bridge*, %struct.net_bridge** %318, align 8
  %320 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %321 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = trunc i64 %322 to i32
  %324 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %325 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %324)
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 4
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %10, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = call i32 (%struct.net_bridge*, i8*, i32, i32, ...) @br_notice(%struct.net_bridge* %319, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %323, i32 %327, i64 %329, i64 %331)
  br label %333

333:                                              ; preds = %316, %313
  br label %350

334:                                              ; preds = %120
  %335 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %336 = call i32 @br_received_config_bpdu(%struct.net_bridge_port* %335, %struct.br_config_bpdu* %10)
  br label %349

337:                                              ; preds = %105
  %338 = load i8*, i8** %9, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 0
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = load i8, i8* @BPDU_TYPE_TCN, align 1
  %343 = zext i8 %342 to i32
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %337
  %346 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %347 = call i32 @br_received_tcn_bpdu(%struct.net_bridge_port* %346)
  br label %348

348:                                              ; preds = %345, %337
  br label %349

349:                                              ; preds = %348, %334
  br label %350

350:                                              ; preds = %349, %333, %119, %91, %83, %72, %65, %55
  %351 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  %352 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %351, i32 0, i32 1
  %353 = call i32 @spin_unlock(i32* %352)
  br label %354

354:                                              ; preds = %350, %42, %36, %14
  %355 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %356 = call i32 @kfree_skb(%struct.sk_buff* %355)
  ret void
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_bridge_port* @br_port_get_check_rcu(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.TYPE_10__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @br_notice(%struct.net_bridge*, i8*, i32, i32, ...) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i8* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @br_get_ticks(i8*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @br_received_config_bpdu(%struct.net_bridge_port*, %struct.br_config_bpdu*) #1

declare dso_local i32 @br_received_tcn_bpdu(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
