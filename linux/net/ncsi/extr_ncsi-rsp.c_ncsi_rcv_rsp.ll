; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rcv_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rcv_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_rsp_handler = type { i64, i32 (%struct.ncsi_request*)*, i32 }
%struct.ncsi_request = type opaque
%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.ncsi_dev = type { i32 }
%struct.ncsi_dev_priv = type { %struct.TYPE_2__, i32, %struct.ncsi_request.0* }
%struct.TYPE_2__ = type { i32 }
%struct.ncsi_request.0 = type { i64, i32, i32, i32, i32, %struct.sk_buff*, i32 }
%struct.ncsi_pkt_hdr = type { i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_PKT_AEN = common dso_local global i64 0, align 8
@ncsi_rsp_handlers = common dso_local global %struct.ncsi_rsp_handler* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Received unrecognized packet (0x%x)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"NCSI: 'bad' packet ignored for type 0x%x\0A\00", align 1
@NCSI_REQ_FLAG_NETLINK_DRIVEN = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"NCSI: Handler for packet type 0x%x returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"NCSI: Netlink handler for packet type 0x%x returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncsi_rcv_rsp(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ncsi_rsp_handler*, align 8
  %11 = alloca %struct.ncsi_dev*, align 8
  %12 = alloca %struct.ncsi_dev_priv*, align 8
  %13 = alloca %struct.ncsi_request.0*, align 8
  %14 = alloca %struct.ncsi_pkt_hdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store %struct.ncsi_rsp_handler* null, %struct.ncsi_rsp_handler** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.ncsi_dev* @ncsi_find_dev(%struct.net_device* %19)
  store %struct.ncsi_dev* %20, %struct.ncsi_dev** %11, align 8
  %21 = load %struct.ncsi_dev*, %struct.ncsi_dev** %11, align 8
  %22 = icmp ne %struct.ncsi_dev* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.ncsi_dev*, %struct.ncsi_dev** %11, align 8
  %25 = call %struct.ncsi_dev_priv* @TO_NCSI_DEV_PRIV(%struct.ncsi_dev* %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.ncsi_dev_priv* [ %25, %23 ], [ null, %26 ]
  store %struct.ncsi_dev_priv* %28, %struct.ncsi_dev_priv** %12, align 8
  %29 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %30 = icmp ne %struct.ncsi_dev_priv* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %239

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i64 @skb_network_header(%struct.sk_buff* %35)
  %37 = inttoptr i64 %36 to %struct.ncsi_pkt_hdr*
  store %struct.ncsi_pkt_hdr* %37, %struct.ncsi_pkt_hdr** %14, align 8
  %38 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %39 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NCSI_PKT_AEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @ncsi_aen_handler(%struct.ncsi_dev_priv* %44, %struct.sk_buff* %45)
  store i32 %46, i32* %5, align 4
  br label %239

47:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %80, %47
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** @ncsi_rsp_handlers, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.ncsi_rsp_handler* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** @ncsi_rsp_handlers, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %54, i64 %56
  %58 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %61 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %53
  %65 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** @ncsi_rsp_handlers, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %65, i64 %67
  %69 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %68, i32 0, i32 1
  %70 = load i32 (%struct.ncsi_request*)*, i32 (%struct.ncsi_request*)** %69, align 8
  %71 = icmp ne i32 (%struct.ncsi_request*)* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** @ncsi_rsp_handlers, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %73, i64 %75
  store %struct.ncsi_rsp_handler* %76, %struct.ncsi_rsp_handler** %10, align 8
  br label %78

77:                                               ; preds = %64
  store %struct.ncsi_rsp_handler* null, %struct.ncsi_rsp_handler** %10, align 8
  br label %78

78:                                               ; preds = %77, %72
  br label %83

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %48

83:                                               ; preds = %78, %48
  %84 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** %10, align 8
  %85 = icmp ne %struct.ncsi_rsp_handler* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load %struct.ncsi_dev*, %struct.ncsi_dev** %11, align 8
  %88 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %91 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, i64, ...) @netdev_err(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %239

96:                                               ; preds = %83
  %97 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %98 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %102 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %101, i32 0, i32 2
  %103 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %102, align 8
  %104 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %105 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %103, i64 %106
  store %struct.ncsi_request.0* %107, %struct.ncsi_request.0** %13, align 8
  %108 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %109 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %96
  %113 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %114 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %113, i32 0, i32 1
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %239

119:                                              ; preds = %96
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %122 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %121, i32 0, i32 5
  store %struct.sk_buff* %120, %struct.sk_buff** %122, align 8
  %123 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %124 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %119
  %128 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %129 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %128, i32 0, i32 1
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = load i32, i32* @ENOENT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %18, align 4
  br label %235

134:                                              ; preds = %119
  %135 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %136 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %135, i32 0, i32 1
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** %10, align 8
  %140 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %134
  %145 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %146 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ntohs(i32 %147)
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %144, %134
  %150 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @ncsi_validate_rsp_pkt(%struct.ncsi_request.0* %150, i32 %151)
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %192

155:                                              ; preds = %149
  %156 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %157 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %161 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @netdev_warn(i32 %159, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %162)
  %164 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %165 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NCSI_REQ_FLAG_NETLINK_DRIVEN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %155
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* @EPERM, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %212

175:                                              ; preds = %169
  %176 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %177 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %181 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %184 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %187 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %186, i32 0, i32 1
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @ncsi_send_netlink_err(i32 %179, i32 %182, i32 %185, i32* %187, i32 %188)
  br label %190

190:                                              ; preds = %175
  br label %191

191:                                              ; preds = %190, %155
  br label %235

192:                                              ; preds = %149
  %193 = load %struct.ncsi_rsp_handler*, %struct.ncsi_rsp_handler** %10, align 8
  %194 = getelementptr inbounds %struct.ncsi_rsp_handler, %struct.ncsi_rsp_handler* %193, i32 0, i32 1
  %195 = load i32 (%struct.ncsi_request*)*, i32 (%struct.ncsi_request*)** %194, align 8
  %196 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %197 = bitcast %struct.ncsi_request.0* %196 to %struct.ncsi_request*
  %198 = call i32 %195(%struct.ncsi_request* %197)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %192
  %202 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %203 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %207 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = call i32 (i32, i8*, i64, ...) @netdev_err(i32 %205, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %208, i32 %209)
  br label %211

211:                                              ; preds = %201, %192
  br label %212

212:                                              ; preds = %211, %174
  %213 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %214 = getelementptr inbounds %struct.ncsi_request.0, %struct.ncsi_request.0* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @NCSI_REQ_FLAG_NETLINK_DRIVEN, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %212
  %219 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %220 = call i32 @ncsi_rsp_handler_netlink(%struct.ncsi_request.0* %219)
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %218
  %224 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %12, align 8
  %225 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %14, align 8
  %229 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = call i32 (i32, i8*, i64, ...) @netdev_err(i32 %227, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %230, i32 %231)
  br label %233

233:                                              ; preds = %223, %218
  br label %234

234:                                              ; preds = %233, %212
  br label %235

235:                                              ; preds = %234, %191, %127
  %236 = load %struct.ncsi_request.0*, %struct.ncsi_request.0** %13, align 8
  %237 = call i32 @ncsi_free_request(%struct.ncsi_request.0* %236)
  %238 = load i32, i32* %18, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %235, %112, %86, %43, %31
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local %struct.ncsi_dev* @ncsi_find_dev(%struct.net_device*) #1

declare dso_local %struct.ncsi_dev_priv* @TO_NCSI_DEV_PRIV(%struct.ncsi_dev*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ncsi_aen_handler(%struct.ncsi_dev_priv*, %struct.sk_buff*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ncsi_rsp_handler*) #1

declare dso_local i32 @netdev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ncsi_validate_rsp_pkt(%struct.ncsi_request.0*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64) #1

declare dso_local i32 @ncsi_send_netlink_err(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ncsi_rsp_handler_netlink(%struct.ncsi_request.0*) #1

declare dso_local i32 @ncsi_free_request(%struct.ncsi_request.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
