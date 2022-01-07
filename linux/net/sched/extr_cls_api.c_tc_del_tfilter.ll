; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_del_tfilter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_del_tfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i64, i64, i32, i32, i32 }
%struct.Qdisc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_chain_info = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* (%struct.tcf_proto*, i64)*, i32 }
%struct.tcf_proto = type { %struct.TYPE_6__* }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rtm_tca_policy = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Cannot flush filters with protocol, handle or kind set\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Specified TC filter name too long\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QDISC_CLASS_OPS_DOIT_UNLOCKED = common dso_local global i32 0, align 4
@TCA_CHAIN = common dso_local global i64 0, align 8
@TC_ACT_EXT_VAL_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Specified chain index exceeds upper limit\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cannot find specified filter chain\00", align 1
@RTM_DELTFILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Filter with specified priority/protocol not found\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Specified filter kind does not match existing one\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Specified filter handle not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_del_tfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_del_tfilter(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcmsg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.Qdisc*, align 8
  %18 = alloca %struct.tcf_chain_info, align 4
  %19 = alloca %struct.tcf_chain*, align 8
  %20 = alloca %struct.tcf_block*, align 8
  %21 = alloca %struct.tcf_proto*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.net* @sock_net(i32 %30)
  store %struct.net* %31, %struct.net** %8, align 8
  %32 = load i32, i32* @TCA_MAX, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %9, align 8
  %36 = alloca %struct.nlattr*, i64 %34, align 16
  store i64 %34, i64* %10, align 8
  %37 = load i32, i32* @IFNAMSIZ, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %17, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %19, align 8
  store %struct.tcf_block* null, %struct.tcf_block** %20, align 8
  store %struct.tcf_proto* null, %struct.tcf_proto** %21, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %23, align 8
  store i32 0, i32* %25, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.net*, %struct.net** %8, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CAP_NET_ADMIN, align 4
  %45 = call i32 @netlink_ns_capable(%struct.sk_buff* %40, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %386

50:                                               ; preds = %3
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %52 = load i32, i32* @TCA_MAX, align 4
  %53 = load i32, i32* @rtm_tca_policy, align 4
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %55 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %51, i32 32, %struct.nlattr** %36, i32 %52, i32 %53, %struct.netlink_ext_ack* %54)
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %24, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %24, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %386

60:                                               ; preds = %50
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %62 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %61)
  store %struct.tcmsg* %62, %struct.tcmsg** %12, align 8
  %63 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %64 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @TC_H_MIN(i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %68 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @TC_H_MAJ(i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %72 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %60
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %81 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @TCA_KIND, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84, %79, %76
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %91 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %90, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %386

94:                                               ; preds = %84, %60
  %95 = load %struct.net*, %struct.net** %8, align 8
  %96 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %97 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %100 = call i32 @__tcf_qdisc_find(%struct.net* %95, %struct.Qdisc** %17, i64* %15, i32 %98, i32 0, %struct.netlink_ext_ack* %99)
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %24, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %24, align 4
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %386

105:                                              ; preds = %94
  %106 = load i64, i64* @TCA_KIND, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i64 @tcf_proto_check_kind(%struct.nlattr* %108, i8* %39)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %113 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %24, align 4
  br label %353

116:                                              ; preds = %105
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %121 = icmp ne %struct.Qdisc* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %124 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @QDISC_CLASS_OPS_DOIT_UNLOCKED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %122, %119
  %134 = call i32 @tcf_proto_is_unlocked(i8* %39)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133, %122, %116
  store i32 1, i32* %25, align 4
  %137 = call i32 (...) @rtnl_lock()
  br label %138

138:                                              ; preds = %136, %133
  %139 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %142 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %145 = call i32 @__tcf_qdisc_cl_find(%struct.Qdisc* %139, i64 %140, i64* %22, i32 %143, %struct.netlink_ext_ack* %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %353

149:                                              ; preds = %138
  %150 = load %struct.net*, %struct.net** %8, align 8
  %151 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %152 = load i64, i64* %22, align 8
  %153 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %154 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %157 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %160 = call %struct.tcf_proto* @__tcf_block_find(%struct.net* %150, %struct.Qdisc* %151, i64 %152, i32 %155, i32 %158, %struct.netlink_ext_ack* %159)
  %161 = bitcast %struct.tcf_proto* %160 to %struct.tcf_block*
  store %struct.tcf_block* %161, %struct.tcf_block** %20, align 8
  %162 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %163 = bitcast %struct.tcf_block* %162 to %struct.tcf_proto*
  %164 = call i64 @IS_ERR(%struct.tcf_proto* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %149
  %167 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %168 = bitcast %struct.tcf_block* %167 to %struct.tcf_proto*
  %169 = call i32 @PTR_ERR(%struct.tcf_proto* %168)
  store i32 %169, i32* %24, align 4
  br label %353

170:                                              ; preds = %149
  %171 = load i64, i64* @TCA_CHAIN, align 8
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = icmp ne %struct.nlattr* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i64, i64* @TCA_CHAIN, align 8
  %177 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %176
  %178 = load %struct.nlattr*, %struct.nlattr** %177, align 8
  %179 = call i64 @nla_get_u32(%struct.nlattr* %178)
  br label %181

180:                                              ; preds = %170
  br label %181

181:                                              ; preds = %180, %175
  %182 = phi i64 [ %179, %175 ], [ 0, %180 ]
  store i64 %182, i64* %16, align 8
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* @TC_ACT_EXT_VAL_MASK, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %188 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %24, align 4
  br label %353

191:                                              ; preds = %181
  %192 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %193 = bitcast %struct.tcf_block* %192 to %struct.tcf_proto*
  %194 = load i64, i64* %16, align 8
  %195 = call %struct.tcf_chain* @tcf_chain_get(%struct.tcf_proto* %193, i64 %194, i32 0)
  store %struct.tcf_chain* %195, %struct.tcf_chain** %19, align 8
  %196 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %197 = icmp ne %struct.tcf_chain* %196, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %191
  %199 = load i64, i64* %14, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 0, i32* %24, align 4
  br label %353

202:                                              ; preds = %198
  %203 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %204 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %205 = load i32, i32* @ENOENT, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %24, align 4
  br label %353

207:                                              ; preds = %191
  %208 = load i64, i64* %14, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %207
  %211 = load %struct.net*, %struct.net** %8, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %213 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %214 = bitcast %struct.tcf_block* %213 to %struct.tcf_proto*
  %215 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %216 = load i64, i64* %15, align 8
  %217 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %218 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %219 = load i32, i32* @RTM_DELTFILTER, align 4
  %220 = load i32, i32* %25, align 4
  %221 = call i32 @tfilter_notify_chain(%struct.net* %211, %struct.sk_buff* %212, %struct.tcf_proto* %214, %struct.Qdisc* %215, i64 %216, %struct.nlmsghdr* %217, %struct.tcf_chain* %218, i32 %219, i32 %220)
  %222 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %223 = load i32, i32* %25, align 4
  %224 = call i32 @tcf_chain_flush(%struct.tcf_chain* %222, i32 %223)
  store i32 0, i32* %24, align 4
  br label %353

225:                                              ; preds = %207
  %226 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %227 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %226, i32 0, i32 0
  %228 = call i32 @mutex_lock(i32* %227)
  %229 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* %14, align 8
  %232 = call %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain* %229, %struct.tcf_chain_info* %18, i64 %230, i64 %231, i32 0)
  store %struct.tcf_proto* %232, %struct.tcf_proto** %21, align 8
  %233 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %234 = icmp ne %struct.tcf_proto* %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %225
  %236 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %237 = call i64 @IS_ERR(%struct.tcf_proto* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %235, %225
  %240 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %241 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %240, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %242 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %243 = icmp ne %struct.tcf_proto* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %246 = call i32 @PTR_ERR(%struct.tcf_proto* %245)
  br label %250

247:                                              ; preds = %239
  %248 = load i32, i32* @ENOENT, align 4
  %249 = sub nsw i32 0, %248
  br label %250

250:                                              ; preds = %247, %244
  %251 = phi i32 [ %246, %244 ], [ %249, %247 ]
  store i32 %251, i32* %24, align 4
  br label %382

252:                                              ; preds = %235
  %253 = load i64, i64* @TCA_KIND, align 8
  %254 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %253
  %255 = load %struct.nlattr*, %struct.nlattr** %254, align 8
  %256 = icmp ne %struct.nlattr* %255, null
  br i1 %256, label %257, label %273

257:                                              ; preds = %252
  %258 = load i64, i64* @TCA_KIND, align 8
  %259 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %258
  %260 = load %struct.nlattr*, %struct.nlattr** %259, align 8
  %261 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %262 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %261, i32 0, i32 0
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @nla_strcmp(%struct.nlattr* %260, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %257
  %269 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %270 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %269, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %24, align 4
  br label %382

273:                                              ; preds = %257, %252
  %274 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %275 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %303

278:                                              ; preds = %273
  %279 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %280 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %281 = call i32 @tcf_proto_signal_destroying(%struct.tcf_chain* %279, %struct.tcf_proto* %280)
  %282 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %283 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %284 = call i32 @tcf_chain_tp_remove(%struct.tcf_chain* %282, %struct.tcf_chain_info* %18, %struct.tcf_proto* %283)
  %285 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %286 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %285, i32 0, i32 0
  %287 = call i32 @mutex_unlock(i32* %286)
  %288 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %289 = load i32, i32* %25, align 4
  %290 = call i32 @tcf_proto_put(%struct.tcf_proto* %288, i32 %289, i32* null)
  %291 = load %struct.net*, %struct.net** %8, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %293 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %294 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %295 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %296 = bitcast %struct.tcf_block* %295 to %struct.tcf_proto*
  %297 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %298 = load i64, i64* %15, align 8
  %299 = load i8*, i8** %23, align 8
  %300 = load i32, i32* @RTM_DELTFILTER, align 4
  %301 = load i32, i32* %25, align 4
  %302 = call i32 @tfilter_notify(%struct.net* %291, %struct.sk_buff* %292, %struct.nlmsghdr* %293, %struct.tcf_proto* %294, %struct.tcf_proto* %296, %struct.Qdisc* %297, i64 %298, i8* %299, i32 %300, i32 0, i32 %301)
  store i32 0, i32* %24, align 4
  br label %353

303:                                              ; preds = %273
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  %306 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %307 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %306, i32 0, i32 0
  %308 = call i32 @mutex_unlock(i32* %307)
  %309 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %310 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %309, i32 0, i32 0
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i8* (%struct.tcf_proto*, i64)*, i8* (%struct.tcf_proto*, i64)** %312, align 8
  %314 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %315 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %316 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = call i8* %313(%struct.tcf_proto* %314, i64 %317)
  store i8* %318, i8** %23, align 8
  %319 = load i8*, i8** %23, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %326, label %321

321:                                              ; preds = %305
  %322 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %323 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %322, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %324 = load i32, i32* @ENOENT, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %24, align 4
  br label %352

326:                                              ; preds = %305
  %327 = load %struct.net*, %struct.net** %8, align 8
  %328 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %329 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %330 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %331 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %332 = bitcast %struct.tcf_block* %331 to %struct.tcf_proto*
  %333 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %334 = load i64, i64* %15, align 8
  %335 = load i8*, i8** %23, align 8
  %336 = load i32, i32* %25, align 4
  %337 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %338 = call i32 @tfilter_del_notify(%struct.net* %327, %struct.sk_buff* %328, %struct.nlmsghdr* %329, %struct.tcf_proto* %330, %struct.tcf_proto* %332, %struct.Qdisc* %333, i64 %334, i8* %335, i32 0, i32* %27, i32 %336, %struct.netlink_ext_ack* %337)
  store i32 %338, i32* %24, align 4
  %339 = load i32, i32* %24, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %326
  br label %353

342:                                              ; preds = %326
  %343 = load i32, i32* %27, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %342
  %346 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %347 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %348 = load i32, i32* %25, align 4
  %349 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %350 = call i32 @tcf_chain_tp_delete_empty(%struct.tcf_chain* %346, %struct.tcf_proto* %347, i32 %348, %struct.netlink_ext_ack* %349)
  br label %351

351:                                              ; preds = %345, %342
  br label %352

352:                                              ; preds = %351, %321
  br label %353

353:                                              ; preds = %382, %352, %341, %278, %210, %202, %201, %186, %166, %148, %111
  %354 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %355 = icmp ne %struct.tcf_chain* %354, null
  br i1 %355, label %356, label %370

356:                                              ; preds = %353
  %357 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %358 = icmp ne %struct.tcf_proto* %357, null
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  %360 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %361 = call i64 @IS_ERR(%struct.tcf_proto* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %365 = load i32, i32* %25, align 4
  %366 = call i32 @tcf_proto_put(%struct.tcf_proto* %364, i32 %365, i32* null)
  br label %367

367:                                              ; preds = %363, %359, %356
  %368 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %369 = call i32 @tcf_chain_put(%struct.tcf_chain* %368)
  br label %370

370:                                              ; preds = %367, %353
  %371 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %372 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %373 = bitcast %struct.tcf_block* %372 to %struct.tcf_proto*
  %374 = load i32, i32* %25, align 4
  %375 = call i32 @tcf_block_release(%struct.Qdisc* %371, %struct.tcf_proto* %373, i32 %374)
  %376 = load i32, i32* %25, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %370
  %379 = call i32 (...) @rtnl_unlock()
  br label %380

380:                                              ; preds = %378, %370
  %381 = load i32, i32* %24, align 4
  store i32 %381, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %386

382:                                              ; preds = %268, %250
  %383 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %384 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %383, i32 0, i32 0
  %385 = call i32 @mutex_unlock(i32* %384)
  br label %353

386:                                              ; preds = %380, %103, %89, %58, %47
  %387 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %387)
  %388 = load i32, i32* %4, align 4
  ret i32 %388
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @TC_H_MIN(i32) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @__tcf_qdisc_find(%struct.net*, %struct.Qdisc**, i64*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @tcf_proto_check_kind(%struct.nlattr*, i8*) #1

declare dso_local i32 @tcf_proto_is_unlocked(i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__tcf_qdisc_cl_find(%struct.Qdisc*, i64, i64*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_proto* @__tcf_block_find(%struct.net*, %struct.Qdisc*, i64, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.tcf_proto*) #1

declare dso_local i32 @PTR_ERR(%struct.tcf_proto*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.tcf_chain* @tcf_chain_get(%struct.tcf_proto*, i64, i32) #1

declare dso_local i32 @tfilter_notify_chain(%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, %struct.Qdisc*, i64, %struct.nlmsghdr*, %struct.tcf_chain*, i32, i32) #1

declare dso_local i32 @tcf_chain_flush(%struct.tcf_chain*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain*, %struct.tcf_chain_info*, i64, i64, i32) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @tcf_proto_signal_destroying(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i32 @tcf_chain_tp_remove(%struct.tcf_chain*, %struct.tcf_chain_info*, %struct.tcf_proto*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tcf_proto_put(%struct.tcf_proto*, i32, i32*) #1

declare dso_local i32 @tfilter_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_proto*, %struct.Qdisc*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @tfilter_del_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_proto*, %struct.Qdisc*, i64, i8*, i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_chain_tp_delete_empty(%struct.tcf_chain*, %struct.tcf_proto*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_chain_put(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_block_release(%struct.Qdisc*, %struct.tcf_proto*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
