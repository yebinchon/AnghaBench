; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_modify_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_modify_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i64, i64, i32 }
%struct.net_device = type { %struct.Qdisc* }
%struct.Qdisc = type { i64, %struct.netdev_queue*, %struct.TYPE_4__* }
%struct.netdev_queue = type { %struct.Qdisc* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)* }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rtm_tca_policy = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@TC_H_INGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to find specified qdisc\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"NLM_F_REPLACE needed to override\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid minor handle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Exclusivity flag on, cannot override\00", align 1
@TCA_KIND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid qdisc name\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Qdisc parent/child loop detected\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Handle cannot be zero\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Specified qdisc not found\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Exclusivity flag on, cannot modify\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"Qdisc not found. To create specify NLM_F_CREATE flag\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Cannot find ingress queue for specified device\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_modify_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_modify_qdisc(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Qdisc*, align 8
  %15 = alloca %struct.Qdisc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.netdev_queue*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %8, align 8
  %23 = load i32, i32* @TCA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAP_NET_ADMIN, align 4
  %33 = call i32 @netlink_ns_capable(%struct.sk_buff* %28, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %442, %38
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %41 = load i32, i32* @TCA_MAX, align 4
  %42 = load i32, i32* @rtm_tca_policy, align 4
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %44 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %40, i32 24, %struct.nlattr** %27, i32 %41, i32 %42, %struct.netlink_ext_ack* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

49:                                               ; preds = %39
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %51 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %50)
  store %struct.tcmsg* %51, %struct.tcmsg** %9, align 8
  %52 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %53 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %15, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %57 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.net_device* @__dev_get_by_index(%struct.net* %55, i32 %58)
  store %struct.net_device* %59, %struct.net_device** %12, align 8
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

65:                                               ; preds = %49
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %270

68:                                               ; preds = %65
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @TC_H_ROOT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %68
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @TC_H_INGRESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.net_device*, %struct.net_device** %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i64 @TC_H_MAJ(i64 %78)
  %80 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %77, i64 %79)
  store %struct.Qdisc* %80, %struct.Qdisc** %15, align 8
  %81 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %82 = icmp ne %struct.Qdisc* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %85 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

88:                                               ; preds = %76
  %89 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call %struct.Qdisc* @qdisc_leaf(%struct.Qdisc* %89, i64 %90)
  store %struct.Qdisc* %91, %struct.Qdisc** %14, align 8
  br label %102

92:                                               ; preds = %72
  %93 = load %struct.net_device*, %struct.net_device** %12, align 8
  %94 = call i64 @dev_ingress_queue_create(%struct.net_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.net_device*, %struct.net_device** %12, align 8
  %98 = call %struct.netdev_queue* @dev_ingress_queue(%struct.net_device* %97)
  %99 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %98, i32 0, i32 0
  %100 = load %struct.Qdisc*, %struct.Qdisc** %99, align 8
  store %struct.Qdisc* %100, %struct.Qdisc** %14, align 8
  br label %101

101:                                              ; preds = %96, %92
  br label %102

102:                                              ; preds = %101, %88
  br label %107

103:                                              ; preds = %68
  %104 = load %struct.net_device*, %struct.net_device** %12, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load %struct.Qdisc*, %struct.Qdisc** %105, align 8
  store %struct.Qdisc* %106, %struct.Qdisc** %14, align 8
  br label %107

107:                                              ; preds = %103, %102
  %108 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %109 = icmp ne %struct.Qdisc* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %112 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  br label %116

116:                                              ; preds = %115, %110, %107
  %117 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %118 = icmp ne %struct.Qdisc* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %121 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %126 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %129 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %269

132:                                              ; preds = %124, %119, %116
  %133 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %134 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %225

137:                                              ; preds = %132
  %138 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %139 = icmp ne %struct.Qdisc* %138, null
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %142 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NLM_F_REPLACE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %149 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i32, i32* @EEXIST, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

152:                                              ; preds = %140, %137
  %153 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %154 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @TC_H_MIN(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %160 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

163:                                              ; preds = %152
  %164 = load %struct.net_device*, %struct.net_device** %12, align 8
  %165 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %166 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %164, i64 %167)
  store %struct.Qdisc* %168, %struct.Qdisc** %14, align 8
  %169 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %170 = icmp ne %struct.Qdisc* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %163
  br label %342

172:                                              ; preds = %163
  %173 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %174 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @NLM_F_EXCL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %181 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %182 = load i32, i32* @EEXIST, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

184:                                              ; preds = %172
  %185 = load i64, i64* @TCA_KIND, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = icmp ne %struct.nlattr* %187, null
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load i64, i64* @TCA_KIND, align 8
  %191 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %190
  %192 = load %struct.nlattr*, %struct.nlattr** %191, align 8
  %193 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %194 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %193, i32 0, i32 2
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @nla_strcmp(%struct.nlattr* %192, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %189
  %201 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %202 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %201, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

205:                                              ; preds = %189, %184
  %206 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %207 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %208 = icmp eq %struct.Qdisc* %206, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %211 = icmp ne %struct.Qdisc* %210, null
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %214 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %215 = call i64 @check_loop(%struct.Qdisc* %213, %struct.Qdisc* %214, i32 0)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212, %205
  %218 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %219 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %218, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %220 = load i32, i32* @ELOOP, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

222:                                              ; preds = %212, %209
  %223 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %224 = call i32 @qdisc_refcount_inc(%struct.Qdisc* %223)
  br label %446

225:                                              ; preds = %132
  %226 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %227 = icmp ne %struct.Qdisc* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  br label %342

229:                                              ; preds = %225
  %230 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %231 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @NLM_F_CREATE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %267

236:                                              ; preds = %229
  %237 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %238 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @NLM_F_REPLACE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %267

243:                                              ; preds = %236
  %244 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %245 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @NLM_F_EXCL, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %266, label %250

250:                                              ; preds = %243
  %251 = load i64, i64* @TCA_KIND, align 8
  %252 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %251
  %253 = load %struct.nlattr*, %struct.nlattr** %252, align 8
  %254 = icmp ne %struct.nlattr* %253, null
  br i1 %254, label %255, label %267

255:                                              ; preds = %250
  %256 = load i64, i64* @TCA_KIND, align 8
  %257 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %256
  %258 = load %struct.nlattr*, %struct.nlattr** %257, align 8
  %259 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %260 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %259, i32 0, i32 2
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @nla_strcmp(%struct.nlattr* %258, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %255, %243
  br label %342

267:                                              ; preds = %255, %250, %236, %229
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268, %124
  br label %286

270:                                              ; preds = %65
  %271 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %272 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %277 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %276, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

280:                                              ; preds = %270
  %281 = load %struct.net_device*, %struct.net_device** %12, align 8
  %282 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %283 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %281, i64 %284)
  store %struct.Qdisc* %285, %struct.Qdisc** %14, align 8
  br label %286

286:                                              ; preds = %280, %269
  %287 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %288 = icmp ne %struct.Qdisc* %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %291 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %290, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %292 = load i32, i32* @ENOENT, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

294:                                              ; preds = %286
  %295 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %296 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @NLM_F_EXCL, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %303 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %302, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %304 = load i32, i32* @EEXIST, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

306:                                              ; preds = %294
  %307 = load i64, i64* @TCA_KIND, align 8
  %308 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %307
  %309 = load %struct.nlattr*, %struct.nlattr** %308, align 8
  %310 = icmp ne %struct.nlattr* %309, null
  br i1 %310, label %311, label %327

311:                                              ; preds = %306
  %312 = load i64, i64* @TCA_KIND, align 8
  %313 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %312
  %314 = load %struct.nlattr*, %struct.nlattr** %313, align 8
  %315 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %316 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %315, i32 0, i32 2
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i64 @nla_strcmp(%struct.nlattr* %314, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %311
  %323 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %324 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %323, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %325 = load i32, i32* @EINVAL, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

327:                                              ; preds = %311, %306
  %328 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %329 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %330 = call i32 @qdisc_change(%struct.Qdisc* %328, %struct.nlattr** %27, %struct.netlink_ext_ack* %329)
  store i32 %330, i32* %16, align 4
  %331 = load i32, i32* %16, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %327
  %334 = load %struct.net*, %struct.net** %8, align 8
  %335 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %336 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %337 = load i64, i64* %13, align 8
  %338 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %339 = call i32 @qdisc_notify(%struct.net* %334, %struct.sk_buff* %335, %struct.nlmsghdr* %336, i64 %337, i32* null, %struct.Qdisc* %338)
  br label %340

340:                                              ; preds = %333, %327
  %341 = load i32, i32* %16, align 4
  store i32 %341, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

342:                                              ; preds = %266, %228, %171
  %343 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %344 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @NLM_F_CREATE, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %342
  %350 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %351 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %350, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %352 = load i32, i32* @ENOENT, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

354:                                              ; preds = %342
  %355 = load i64, i64* %13, align 8
  %356 = load i64, i64* @TC_H_INGRESS, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %381

358:                                              ; preds = %354
  %359 = load %struct.net_device*, %struct.net_device** %12, align 8
  %360 = call %struct.netdev_queue* @dev_ingress_queue(%struct.net_device* %359)
  %361 = icmp ne %struct.netdev_queue* %360, null
  br i1 %361, label %362, label %375

362:                                              ; preds = %358
  %363 = load %struct.net_device*, %struct.net_device** %12, align 8
  %364 = load %struct.net_device*, %struct.net_device** %12, align 8
  %365 = call %struct.netdev_queue* @dev_ingress_queue(%struct.net_device* %364)
  %366 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %367 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %368 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %371 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %374 = call %struct.Qdisc* @qdisc_create(%struct.net_device* %363, %struct.netdev_queue* %365, %struct.Qdisc* %366, i64 %369, i64 %372, %struct.nlattr** %27, i32* %16, %struct.netlink_ext_ack* %373)
  store %struct.Qdisc* %374, %struct.Qdisc** %14, align 8
  br label %380

375:                                              ; preds = %358
  %376 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %377 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %376, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %378 = load i32, i32* @ENOENT, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %16, align 4
  br label %380

380:                                              ; preds = %375, %362
  br label %434

381:                                              ; preds = %354
  %382 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %383 = icmp ne %struct.Qdisc* %382, null
  br i1 %383, label %384, label %411

384:                                              ; preds = %381
  %385 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %386 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %385, i32 0, i32 2
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %388, align 8
  %390 = icmp ne %struct.TYPE_3__* %389, null
  br i1 %390, label %391, label %411

391:                                              ; preds = %384
  %392 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %393 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %392, i32 0, i32 2
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 0
  %398 = load %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)** %397, align 8
  %399 = icmp ne %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)* %398, null
  br i1 %399, label %400, label %411

400:                                              ; preds = %391
  %401 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %402 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %401, i32 0, i32 2
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_3__*, %struct.TYPE_3__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = load %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)** %406, align 8
  %408 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %409 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %410 = call %struct.netdev_queue* %407(%struct.Qdisc* %408, %struct.tcmsg* %409)
  store %struct.netdev_queue* %410, %struct.netdev_queue** %18, align 8
  br label %422

411:                                              ; preds = %391, %384, %381
  %412 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %413 = icmp ne %struct.Qdisc* %412, null
  br i1 %413, label %414, label %418

414:                                              ; preds = %411
  %415 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %416 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %415, i32 0, i32 1
  %417 = load %struct.netdev_queue*, %struct.netdev_queue** %416, align 8
  store %struct.netdev_queue* %417, %struct.netdev_queue** %18, align 8
  br label %421

418:                                              ; preds = %411
  %419 = load %struct.net_device*, %struct.net_device** %12, align 8
  %420 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %419, i32 0)
  store %struct.netdev_queue* %420, %struct.netdev_queue** %18, align 8
  br label %421

421:                                              ; preds = %418, %414
  br label %422

422:                                              ; preds = %421, %400
  %423 = load %struct.net_device*, %struct.net_device** %12, align 8
  %424 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %425 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %426 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %427 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %430 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %433 = call %struct.Qdisc* @qdisc_create(%struct.net_device* %423, %struct.netdev_queue* %424, %struct.Qdisc* %425, i64 %428, i64 %431, %struct.nlattr** %27, i32* %16, %struct.netlink_ext_ack* %432)
  store %struct.Qdisc* %433, %struct.Qdisc** %14, align 8
  br label %434

434:                                              ; preds = %422, %380
  %435 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %436 = icmp eq %struct.Qdisc* %435, null
  br i1 %436, label %437, label %445

437:                                              ; preds = %434
  %438 = load i32, i32* %16, align 4
  %439 = load i32, i32* @EAGAIN, align 4
  %440 = sub nsw i32 0, %439
  %441 = icmp eq i32 %438, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %437
  br label %39

443:                                              ; preds = %437
  %444 = load i32, i32* %16, align 4
  store i32 %444, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

445:                                              ; preds = %434
  br label %446

446:                                              ; preds = %445, %222
  %447 = load %struct.net_device*, %struct.net_device** %12, align 8
  %448 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %449 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %450 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %451 = load i64, i64* %13, align 8
  %452 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %453 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %454 = call i32 @qdisc_graft(%struct.net_device* %447, %struct.Qdisc* %448, %struct.sk_buff* %449, %struct.nlmsghdr* %450, i64 %451, %struct.Qdisc* %452, i32* null, %struct.netlink_ext_ack* %453)
  store i32 %454, i32* %16, align 4
  %455 = load i32, i32* %16, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %465

457:                                              ; preds = %446
  %458 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %459 = icmp ne %struct.Qdisc* %458, null
  br i1 %459, label %460, label %463

460:                                              ; preds = %457
  %461 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %462 = call i32 @qdisc_put(%struct.Qdisc* %461)
  br label %463

463:                                              ; preds = %460, %457
  %464 = load i32, i32* %16, align 4
  store i32 %464, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

465:                                              ; preds = %446
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %466

466:                                              ; preds = %465, %463, %443, %349, %340, %322, %301, %289, %275, %217, %200, %179, %158, %147, %83, %62, %47, %35
  %467 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %467)
  %468 = load i32, i32* %4, align 4
  ret i32 %468
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i64) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.Qdisc* @qdisc_leaf(%struct.Qdisc*, i64) #1

declare dso_local i64 @dev_ingress_queue_create(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @dev_ingress_queue(%struct.net_device*) #1

declare dso_local i64 @TC_H_MIN(i64) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i64 @check_loop(%struct.Qdisc*, %struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_refcount_inc(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_change(%struct.Qdisc*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i64, i32*, %struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_create(%struct.net_device*, %struct.netdev_queue*, %struct.Qdisc*, i64, i64, %struct.nlattr**, i32*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @qdisc_graft(%struct.net_device*, %struct.Qdisc*, %struct.sk_buff*, %struct.nlmsghdr*, i64, %struct.Qdisc*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
