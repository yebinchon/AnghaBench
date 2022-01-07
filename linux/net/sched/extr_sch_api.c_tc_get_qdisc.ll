; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_get_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_tc_get_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i64, i64, i32 }
%struct.net_device = type { %struct.Qdisc* }
%struct.Qdisc = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { %struct.Qdisc* }

@TCA_MAX = common dso_local global i32 0, align 4
@RTM_GETQDISC = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rtm_tca_policy = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@TC_H_INGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to find qdisc with specified classid\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot find specified qdisc on specified device\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Invalid handle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to find qdisc with specified handle\00", align 1
@TCA_KIND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid qdisc name\00", align 1
@RTM_DELQDISC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Classid cannot be zero\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Cannot delete qdisc with handle of zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_get_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_get_qdisc(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
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
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.tcmsg* %23, %struct.tcmsg** %9, align 8
  %24 = load i32, i32* @TCA_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %15, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RTM_GETQDISC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.net*, %struct.net** %8, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAP_NET_ADMIN, align 4
  %40 = call i32 @netlink_ns_capable(%struct.sk_buff* %35, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

45:                                               ; preds = %34, %3
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %47 = load i32, i32* @TCA_MAX, align 4
  %48 = load i32, i32* @rtm_tca_policy, align 4
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %50 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %46, i32 24, %struct.nlattr** %28, i32 %47, i32 %48, %struct.netlink_ext_ack* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

55:                                               ; preds = %45
  %56 = load %struct.net*, %struct.net** %8, align 8
  %57 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %58 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.net_device* @__dev_get_by_index(%struct.net* %56, i32 %59)
  store %struct.net_device* %60, %struct.net_device** %12, align 8
  %61 = load %struct.net_device*, %struct.net_device** %12, align 8
  %62 = icmp ne %struct.net_device* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

66:                                               ; preds = %55
  %67 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %68 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %140

72:                                               ; preds = %66
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @TC_H_ROOT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %72
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @TC_H_MAJ(i64 %77)
  %79 = load i64, i64* @TC_H_INGRESS, align 8
  %80 = call i64 @TC_H_MAJ(i64 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.net_device*, %struct.net_device** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i64 @TC_H_MAJ(i64 %84)
  %86 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %83, i64 %85)
  store %struct.Qdisc* %86, %struct.Qdisc** %15, align 8
  %87 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %88 = icmp ne %struct.Qdisc* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %91 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

94:                                               ; preds = %82
  %95 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call %struct.Qdisc* @qdisc_leaf(%struct.Qdisc* %95, i64 %96)
  store %struct.Qdisc* %97, %struct.Qdisc** %14, align 8
  br label %108

98:                                               ; preds = %76
  %99 = load %struct.net_device*, %struct.net_device** %12, align 8
  %100 = call %struct.TYPE_4__* @dev_ingress_queue(%struct.net_device* %99)
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.net_device*, %struct.net_device** %12, align 8
  %104 = call %struct.TYPE_4__* @dev_ingress_queue(%struct.net_device* %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.Qdisc*, %struct.Qdisc** %105, align 8
  store %struct.Qdisc* %106, %struct.Qdisc** %14, align 8
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %94
  br label %113

109:                                              ; preds = %72
  %110 = load %struct.net_device*, %struct.net_device** %12, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load %struct.Qdisc*, %struct.Qdisc** %111, align 8
  store %struct.Qdisc* %112, %struct.Qdisc** %14, align 8
  br label %113

113:                                              ; preds = %109, %108
  %114 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %115 = icmp ne %struct.Qdisc* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %118 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %117, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @ENOENT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

121:                                              ; preds = %113
  %122 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %123 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %128 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %131 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %136 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

139:                                              ; preds = %126, %121
  br label %154

140:                                              ; preds = %66
  %141 = load %struct.net_device*, %struct.net_device** %12, align 8
  %142 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %143 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %141, i64 %144)
  store %struct.Qdisc* %145, %struct.Qdisc** %14, align 8
  %146 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %147 = icmp ne %struct.Qdisc* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %140
  %149 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %150 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* @ENOENT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %139
  %155 = load i64, i64* @TCA_KIND, align 8
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = icmp ne %struct.nlattr* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load i64, i64* @TCA_KIND, align 8
  %161 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %160
  %162 = load %struct.nlattr*, %struct.nlattr** %161, align 8
  %163 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %164 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @nla_strcmp(%struct.nlattr* %162, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %159
  %171 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %172 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %171, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

175:                                              ; preds = %159, %154
  %176 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %177 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @RTM_DELQDISC, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %213

181:                                              ; preds = %175
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %186 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

189:                                              ; preds = %181
  %190 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %191 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %196 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* @ENOENT, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

199:                                              ; preds = %189
  %200 = load %struct.net_device*, %struct.net_device** %12, align 8
  %201 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %204 = load i64, i64* %13, align 8
  %205 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %206 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %207 = call i32 @qdisc_graft(%struct.net_device* %200, %struct.Qdisc* %201, %struct.sk_buff* %202, %struct.nlmsghdr* %203, i64 %204, i32* null, %struct.Qdisc* %205, %struct.netlink_ext_ack* %206)
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %199
  %211 = load i32, i32* %16, align 4
  store i32 %211, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

212:                                              ; preds = %199
  br label %220

213:                                              ; preds = %175
  %214 = load %struct.net*, %struct.net** %8, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %219 = call i32 @qdisc_notify(%struct.net* %214, %struct.sk_buff* %215, %struct.nlmsghdr* %216, i64 %217, i32* null, %struct.Qdisc* %218)
  br label %220

220:                                              ; preds = %213, %212
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

221:                                              ; preds = %220, %210, %194, %184, %170, %148, %134, %116, %89, %63, %53, %42
  %222 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i64) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.Qdisc* @qdisc_leaf(%struct.Qdisc*, i64) #1

declare dso_local %struct.TYPE_4__* @dev_ingress_queue(%struct.net_device*) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @qdisc_graft(%struct.net_device*, %struct.Qdisc*, %struct.sk_buff*, %struct.nlmsghdr*, i64, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i64, i32*, %struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
