; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops*, i32 (%struct.Qdisc*)* }
%struct.Qdisc_class_ops = type { i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i32)* }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32, i32, %struct.Qdisc* }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.netdev_queue = type { i32 }

@TCQ_F_INGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Device does not have an ingress queue\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 8
@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Specified class not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.Qdisc*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*, %struct.netlink_ext_ack*)* @qdisc_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_graft(%struct.net_device* %0, %struct.Qdisc* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, i32 %4, %struct.Qdisc* %5, %struct.Qdisc* %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.Qdisc*, align 8
  %16 = alloca %struct.Qdisc*, align 8
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca %struct.Qdisc*, align 8
  %19 = alloca %struct.net*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.netdev_queue*, align 8
  %24 = alloca %struct.Qdisc_class_ops*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %10, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %11, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %12, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.Qdisc* %5, %struct.Qdisc** %15, align 8
  store %struct.Qdisc* %6, %struct.Qdisc** %16, align 8
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %16, align 8
  store %struct.Qdisc* %27, %struct.Qdisc** %18, align 8
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = call %struct.net* @dev_net(%struct.net_device* %28)
  store %struct.net* %29, %struct.net** %19, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %31 = icmp eq %struct.Qdisc* %30, null
  br i1 %31, label %32, label %199

32:                                               ; preds = %8
  store i32 0, i32* %22, align 4
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %21, align 4
  %36 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %37 = icmp ne %struct.Qdisc* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %40 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TCQ_F_INGRESS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %47 = icmp ne %struct.Qdisc* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TCQ_F_INGRESS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48, %38
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %56 = load %struct.net_device*, %struct.net_device** %10, align 8
  %57 = call %struct.netdev_queue* @dev_ingress_queue(%struct.net_device* %56)
  %58 = icmp ne %struct.netdev_queue* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %61 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %274

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %48, %45
  %66 = load %struct.net_device*, %struct.net_device** %10, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFF_UP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.net_device*, %struct.net_device** %10, align 8
  %74 = call i32 @dev_deactivate(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %78 = load %struct.Qdisc*, %struct.Qdisc** %16, align 8
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %80 = call i32 @qdisc_offload_graft_root(%struct.net_device* %76, %struct.Qdisc* %77, %struct.Qdisc* %78, %struct.netlink_ext_ack* %79)
  %81 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %82 = icmp ne %struct.Qdisc* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %85 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %87, align 8
  %89 = icmp ne i32 (%struct.Qdisc*)* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %128

91:                                               ; preds = %83, %75
  store i32 0, i32* %20, align 4
  br label %92

92:                                               ; preds = %124, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = load %struct.net_device*, %struct.net_device** %10, align 8
  %98 = call %struct.netdev_queue* @dev_ingress_queue(%struct.net_device* %97)
  store %struct.netdev_queue* %98, %struct.netdev_queue** %23, align 8
  %99 = load i32, i32* %22, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load %struct.net_device*, %struct.net_device** %10, align 8
  %103 = load i32, i32* %20, align 4
  %104 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %102, i32 %103)
  store %struct.netdev_queue* %104, %struct.netdev_queue** %23, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.netdev_queue*, %struct.netdev_queue** %23, align 8
  %107 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %108 = call %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %106, %struct.Qdisc* %107)
  store %struct.Qdisc* %108, %struct.Qdisc** %16, align 8
  %109 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %110 = icmp ne %struct.Qdisc* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* %20, align 4
  %113 = icmp ugt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %116 = call i32 @qdisc_refcount_inc(%struct.Qdisc* %115)
  br label %117

117:                                              ; preds = %114, %111, %105
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load %struct.Qdisc*, %struct.Qdisc** %16, align 8
  %122 = call i32 @qdisc_put(%struct.Qdisc* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %20, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %20, align 4
  br label %92

127:                                              ; preds = %92
  br label %128

128:                                              ; preds = %127, %90
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %180, label %131

131:                                              ; preds = %128
  %132 = load %struct.net*, %struct.net** %19, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.net_device*, %struct.net_device** %10, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 2
  %138 = load %struct.Qdisc*, %struct.Qdisc** %137, align 8
  %139 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %140 = call i32 @notify_and_destroy(%struct.net* %132, %struct.sk_buff* %133, %struct.nlmsghdr* %134, i32 %135, %struct.Qdisc* %138, %struct.Qdisc* %139)
  %141 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %142 = icmp ne %struct.Qdisc* %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %131
  %144 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %145 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %147, align 8
  %149 = icmp ne i32 (%struct.Qdisc*)* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %152 = call i32 @qdisc_refcount_inc(%struct.Qdisc* %151)
  br label %153

153:                                              ; preds = %150, %143, %131
  %154 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %155 = icmp ne %struct.Qdisc* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %158

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157, %156
  %159 = phi %struct.Qdisc* [ %154, %156 ], [ @noop_qdisc, %157 ]
  %160 = load %struct.net_device*, %struct.net_device** %10, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 2
  store %struct.Qdisc* %159, %struct.Qdisc** %161, align 8
  %162 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %163 = icmp ne %struct.Qdisc* %162, null
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %166 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %168, align 8
  %170 = icmp ne i32 (%struct.Qdisc*)* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %173 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %175, align 8
  %177 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %178 = call i32 %176(%struct.Qdisc* %177)
  br label %179

179:                                              ; preds = %171, %164, %158
  br label %188

180:                                              ; preds = %128
  %181 = load %struct.net*, %struct.net** %19, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %183 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.Qdisc*, %struct.Qdisc** %16, align 8
  %186 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %187 = call i32 @notify_and_destroy(%struct.net* %181, %struct.sk_buff* %182, %struct.nlmsghdr* %183, i32 %184, %struct.Qdisc* %185, %struct.Qdisc* %186)
  br label %188

188:                                              ; preds = %180, %179
  %189 = load %struct.net_device*, %struct.net_device** %10, align 8
  %190 = getelementptr inbounds %struct.net_device, %struct.net_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IFF_UP, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load %struct.net_device*, %struct.net_device** %10, align 8
  %197 = call i32 @dev_activate(%struct.net_device* %196)
  br label %198

198:                                              ; preds = %195, %188
  br label %273

199:                                              ; preds = %8
  %200 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %201 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %203, align 8
  store %struct.Qdisc_class_ops* %204, %struct.Qdisc_class_ops** %24, align 8
  %205 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %206 = icmp ne %struct.Qdisc* %205, null
  br i1 %206, label %207, label %227

207:                                              ; preds = %199
  %208 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %209 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %207
  %215 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %216 = icmp ne %struct.Qdisc* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %219 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %217
  %225 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %226 = call i32 @qdisc_clear_nolock(%struct.Qdisc* %225)
  br label %227

227:                                              ; preds = %224, %217, %214, %207, %199
  %228 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %24, align 8
  %229 = icmp ne %struct.Qdisc_class_ops* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %24, align 8
  %232 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %231, i32 0, i32 0
  %233 = load i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)** %232, align 8
  %234 = icmp ne i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* %233, null
  br i1 %234, label %238, label %235

235:                                              ; preds = %230, %227
  %236 = load i32, i32* @EOPNOTSUPP, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %9, align 4
  br label %274

238:                                              ; preds = %230
  %239 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %24, align 8
  %240 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %239, i32 0, i32 1
  %241 = load i64 (%struct.Qdisc*, i32)*, i64 (%struct.Qdisc*, i32)** %240, align 8
  %242 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %243 = load i32, i32* %14, align 4
  %244 = call i64 %241(%struct.Qdisc* %242, i32 %243)
  store i64 %244, i64* %25, align 8
  %245 = load i64, i64* %25, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %238
  %248 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %249 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %250 = load i32, i32* @ENOENT, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %9, align 4
  br label %274

252:                                              ; preds = %238
  %253 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %24, align 8
  %254 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %253, i32 0, i32 0
  %255 = load i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)** %254, align 8
  %256 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %257 = load i64, i64* %25, align 8
  %258 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %259 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %260 = call i32 %255(%struct.Qdisc* %256, i64 %257, %struct.Qdisc* %258, %struct.Qdisc** %16, %struct.netlink_ext_ack* %259)
  store i32 %260, i32* %26, align 4
  %261 = load i32, i32* %26, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %252
  %264 = load i32, i32* %26, align 4
  store i32 %264, i32* %9, align 4
  br label %274

265:                                              ; preds = %252
  %266 = load %struct.net*, %struct.net** %19, align 8
  %267 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %268 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %269 = load i32, i32* %14, align 4
  %270 = load %struct.Qdisc*, %struct.Qdisc** %16, align 8
  %271 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %272 = call i32 @notify_and_destroy(%struct.net* %266, %struct.sk_buff* %267, %struct.nlmsghdr* %268, i32 %269, %struct.Qdisc* %270, %struct.Qdisc* %271)
  br label %273

273:                                              ; preds = %265, %198
  store i32 0, i32* %9, align 4
  br label %274

274:                                              ; preds = %273, %263, %247, %235, %59
  %275 = load i32, i32* %9, align 4
  ret i32 %275
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @dev_ingress_queue(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local i32 @qdisc_offload_graft_root(%struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_refcount_inc(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local i32 @notify_and_destroy(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

declare dso_local i32 @qdisc_clear_nolock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
