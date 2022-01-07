; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_new_tfilter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_new_tfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i64, i32, i32, i32, i32 }
%struct.Qdisc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_chain_info = type { i32 }
%struct.tcf_chain = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, i32, %struct.netlink_ext_ack*)*, i8* (%struct.tcf_proto*, i32)*, i32 }
%struct.tcf_proto = type { %struct.TYPE_6__* }
%struct.nlattr = type { i32 }
%struct.tcf_block = type { %struct.TYPE_6__* }

@TCA_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rtm_tca_policy = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid filter command with priority of zero\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Specified TC filter name too long\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QDISC_CLASS_OPS_DOIT_UNLOCKED = common dso_local global i32 0, align 4
@TCA_CHAIN = common dso_local global i64 0, align 8
@TC_ACT_EXT_VAL_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Specified chain index exceeds upper limit\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot create specified filter chain\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Filter with specified priority/protocol not found\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Filter kind and protocol must be specified\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Need both RTM_NEWTFILTER and NLM_F_CREATE to create a new filter\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Specified filter kind does not match existing one\00", align 1
@NLM_F_EXCL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Filter already exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"Chain template is set to a different filter kind\00", align 1
@TCA_ACT_NOREPLACE = common dso_local global i32 0, align 4
@TCA_ACT_REPLACE = common dso_local global i32 0, align 4
@RTM_NEWTFILTER = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_new_tfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_new_tfilter(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.Qdisc*, align 8
  %19 = alloca %struct.tcf_chain_info, align 4
  %20 = alloca %struct.tcf_chain*, align 8
  %21 = alloca %struct.tcf_block*, align 8
  %22 = alloca %struct.tcf_proto*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.tcf_proto*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.net* @sock_net(i32 %32)
  store %struct.net* %33, %struct.net** %8, align 8
  %34 = load i32, i32* @TCA_MAX, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %9, align 8
  %38 = alloca %struct.nlattr*, i64 %36, align 16
  store i64 %36, i64* %10, align 8
  %39 = load i32, i32* @IFNAMSIZ, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %18, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %20, align 8
  store i32 0, i32* %27, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.net*, %struct.net** %8, align 8
  %44 = getelementptr inbounds %struct.net, %struct.net* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CAP_NET_ADMIN, align 4
  %47 = call i32 @netlink_ns_capable(%struct.sk_buff* %42, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %494

52:                                               ; preds = %3
  br label %53

53:                                               ; preds = %487, %52
  store i32 0, i32* %26, align 4
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %55 = load i32, i32* @TCA_MAX, align 4
  %56 = load i32, i32* @rtm_tca_policy, align 4
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %58 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %54, i32 24, %struct.nlattr** %38, i32 %55, i32 %56, %struct.netlink_ext_ack* %57)
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %25, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %494

63:                                               ; preds = %53
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %65 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %64)
  store %struct.tcmsg* %65, %struct.tcmsg** %12, align 8
  %66 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %67 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @TC_H_MIN(i32 %68)
  store i64 %69, i64* %13, align 8
  %70 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %71 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @TC_H_MAJ(i32 %72)
  store i64 %73, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %74 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %75 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %16, align 8
  store %struct.tcf_proto* null, %struct.tcf_proto** %22, align 8
  store i64 0, i64* %23, align 8
  store %struct.tcf_block* null, %struct.tcf_block** %21, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %63
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %81 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NLM_F_CREATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i64 @TC_H_MAKE(i32 -2147483648, i32 0)
  store i64 %87, i64* %14, align 8
  store i32 1, i32* %15, align 4
  br label %93

88:                                               ; preds = %79
  %89 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %90 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %494

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %63
  %95 = load %struct.net*, %struct.net** %8, align 8
  %96 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %97 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %100 = call i32 @__tcf_qdisc_find(%struct.net* %95, %struct.Qdisc** %18, i64* %16, i32 %98, i32 0, %struct.netlink_ext_ack* %99)
  store i32 %100, i32* %25, align 4
  %101 = load i32, i32* %25, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %25, align 4
  store i32 %104, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %494

105:                                              ; preds = %94
  %106 = load i64, i64* @TCA_KIND, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i64 @tcf_proto_check_kind(%struct.nlattr* %108, i8* %41)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %113 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %25, align 4
  br label %439

116:                                              ; preds = %105
  %117 = load i32, i32* %27, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %116
  %120 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %121 = icmp ne %struct.Qdisc* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %124 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %123, i32 0, i32 1
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
  %134 = call i32 @tcf_proto_is_unlocked(i8* %41)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133, %122, %116
  store i32 1, i32* %27, align 4
  %137 = call i32 (...) @rtnl_lock()
  br label %138

138:                                              ; preds = %136, %133
  %139 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %142 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %145 = call i32 @__tcf_qdisc_cl_find(%struct.Qdisc* %139, i64 %140, i64* %23, i32 %143, %struct.netlink_ext_ack* %144)
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* %25, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %439

149:                                              ; preds = %138
  %150 = load %struct.net*, %struct.net** %8, align 8
  %151 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %152 = load i64, i64* %23, align 8
  %153 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %154 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %157 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %160 = call %struct.tcf_proto* @__tcf_block_find(%struct.net* %150, %struct.Qdisc* %151, i64 %152, i32 %155, i32 %158, %struct.netlink_ext_ack* %159)
  %161 = bitcast %struct.tcf_proto* %160 to %struct.tcf_block*
  store %struct.tcf_block* %161, %struct.tcf_block** %21, align 8
  %162 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  %163 = bitcast %struct.tcf_block* %162 to %struct.tcf_proto*
  %164 = call i64 @IS_ERR(%struct.tcf_proto* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %149
  %167 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  %168 = bitcast %struct.tcf_block* %167 to %struct.tcf_proto*
  %169 = call i32 @PTR_ERR(%struct.tcf_proto* %168)
  store i32 %169, i32* %25, align 4
  br label %439

170:                                              ; preds = %149
  %171 = load i64, i64* @TCA_CHAIN, align 8
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = icmp ne %struct.nlattr* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i64, i64* @TCA_CHAIN, align 8
  %177 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %176
  %178 = load %struct.nlattr*, %struct.nlattr** %177, align 8
  %179 = call i64 @nla_get_u32(%struct.nlattr* %178)
  br label %181

180:                                              ; preds = %170
  br label %181

181:                                              ; preds = %180, %175
  %182 = phi i64 [ %179, %175 ], [ 0, %180 ]
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* @TC_ACT_EXT_VAL_MASK, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %188 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %187, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %25, align 4
  br label %439

191:                                              ; preds = %181
  %192 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  %193 = bitcast %struct.tcf_block* %192 to %struct.tcf_proto*
  %194 = load i64, i64* %17, align 8
  %195 = call %struct.tcf_chain* @tcf_chain_get(%struct.tcf_proto* %193, i64 %194, i32 1)
  store %struct.tcf_chain* %195, %struct.tcf_chain** %20, align 8
  %196 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %197 = icmp ne %struct.tcf_chain* %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %191
  %199 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %200 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %199, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %25, align 4
  br label %439

203:                                              ; preds = %191
  %204 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %205 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %204, i32 0, i32 0
  %206 = call i32 @mutex_lock(i32* %205)
  %207 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %208 = load i64, i64* %13, align 8
  %209 = load i64, i64* %14, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain* %207, %struct.tcf_chain_info* %19, i64 %208, i64 %209, i32 %210)
  store %struct.tcf_proto* %211, %struct.tcf_proto** %22, align 8
  %212 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %213 = call i64 @IS_ERR(%struct.tcf_proto* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %203
  %216 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %217 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %216, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %218 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %219 = call i32 @PTR_ERR(%struct.tcf_proto* %218)
  store i32 %219, i32* %25, align 4
  br label %490

220:                                              ; preds = %203
  %221 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %222 = icmp eq %struct.tcf_proto* %221, null
  br i1 %222, label %223, label %297

223:                                              ; preds = %220
  store %struct.tcf_proto* null, %struct.tcf_proto** %29, align 8
  %224 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %225 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i32, i32* @EAGAIN, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %25, align 4
  br label %490

231:                                              ; preds = %223
  %232 = load i64, i64* @TCA_KIND, align 8
  %233 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %232
  %234 = load %struct.nlattr*, %struct.nlattr** %233, align 8
  %235 = icmp eq %struct.nlattr* %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = load i64, i64* %13, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %236, %231
  %240 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %241 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %240, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %25, align 4
  br label %490

244:                                              ; preds = %236
  %245 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %246 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @NLM_F_CREATE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %244
  %252 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %253 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %252, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %254 = load i32, i32* @ENOENT, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %25, align 4
  br label %490

256:                                              ; preds = %244
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %261 = call i32 @tcf_chain_tp_prev(%struct.tcf_chain* %260, %struct.tcf_chain_info* %19)
  %262 = call i64 @tcf_auto_prio(i32 %261)
  store i64 %262, i64* %14, align 8
  br label %263

263:                                              ; preds = %259, %256
  %264 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %265 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %264, i32 0, i32 0
  %266 = call i32 @mutex_unlock(i32* %265)
  %267 = load i64, i64* @TCA_KIND, align 8
  %268 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %267
  %269 = load %struct.nlattr*, %struct.nlattr** %268, align 8
  %270 = call i32 @nla_data(%struct.nlattr* %269)
  %271 = load i64, i64* %13, align 8
  %272 = load i64, i64* %14, align 8
  %273 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %274 = load i32, i32* %27, align 4
  %275 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %276 = call %struct.tcf_proto* @tcf_proto_create(i32 %270, i64 %271, i64 %272, %struct.tcf_chain* %273, i32 %274, %struct.netlink_ext_ack* %275)
  store %struct.tcf_proto* %276, %struct.tcf_proto** %29, align 8
  %277 = load %struct.tcf_proto*, %struct.tcf_proto** %29, align 8
  %278 = call i64 @IS_ERR(%struct.tcf_proto* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %263
  %281 = load %struct.tcf_proto*, %struct.tcf_proto** %29, align 8
  %282 = call i32 @PTR_ERR(%struct.tcf_proto* %281)
  store i32 %282, i32* %25, align 4
  br label %451

283:                                              ; preds = %263
  store i32 1, i32* %26, align 4
  %284 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %285 = load %struct.tcf_proto*, %struct.tcf_proto** %29, align 8
  %286 = load i64, i64* %13, align 8
  %287 = load i64, i64* %14, align 8
  %288 = load i32, i32* %27, align 4
  %289 = call %struct.tcf_proto* @tcf_chain_tp_insert_unique(%struct.tcf_chain* %284, %struct.tcf_proto* %285, i64 %286, i64 %287, i32 %288)
  store %struct.tcf_proto* %289, %struct.tcf_proto** %22, align 8
  %290 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %291 = call i64 @IS_ERR(%struct.tcf_proto* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %283
  %294 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %295 = call i32 @PTR_ERR(%struct.tcf_proto* %294)
  store i32 %295, i32* %25, align 4
  br label %451

296:                                              ; preds = %283
  br label %301

297:                                              ; preds = %220
  %298 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %299 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %298, i32 0, i32 0
  %300 = call i32 @mutex_unlock(i32* %299)
  br label %301

301:                                              ; preds = %297, %296
  %302 = load i64, i64* @TCA_KIND, align 8
  %303 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %302
  %304 = load %struct.nlattr*, %struct.nlattr** %303, align 8
  %305 = icmp ne %struct.nlattr* %304, null
  br i1 %305, label %306, label %322

306:                                              ; preds = %301
  %307 = load i64, i64* @TCA_KIND, align 8
  %308 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %307
  %309 = load %struct.nlattr*, %struct.nlattr** %308, align 8
  %310 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %311 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %310, i32 0, i32 0
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @nla_strcmp(%struct.nlattr* %309, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %306
  %318 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %319 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %318, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %320 = load i32, i32* @EINVAL, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %25, align 4
  br label %439

322:                                              ; preds = %306, %301
  %323 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %324 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %323, i32 0, i32 0
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load i8* (%struct.tcf_proto*, i32)*, i8* (%struct.tcf_proto*, i32)** %326, align 8
  %328 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %329 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %330 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i8* %327(%struct.tcf_proto* %328, i32 %331)
  store i8* %332, i8** %24, align 8
  %333 = load i8*, i8** %24, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %348, label %335

335:                                              ; preds = %322
  %336 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %337 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @NLM_F_CREATE, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %335
  %343 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %344 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %343, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %345 = load i32, i32* @ENOENT, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %25, align 4
  br label %439

347:                                              ; preds = %335
  br label %364

348:                                              ; preds = %322
  %349 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %350 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @NLM_F_EXCL, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %348
  %356 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %357 = load i8*, i8** %24, align 8
  %358 = call i32 @tfilter_put(%struct.tcf_proto* %356, i8* %357)
  %359 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %360 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %359, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %361 = load i32, i32* @EEXIST, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %25, align 4
  br label %439

363:                                              ; preds = %348
  br label %364

364:                                              ; preds = %363, %347
  %365 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %366 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %365, i32 0, i32 1
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %366, align 8
  %368 = icmp ne %struct.TYPE_6__* %367, null
  br i1 %368, label %369, label %382

369:                                              ; preds = %364
  %370 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %371 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %370, i32 0, i32 1
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %374 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %373, i32 0, i32 0
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %374, align 8
  %376 = icmp ne %struct.TYPE_6__* %372, %375
  br i1 %376, label %377, label %382

377:                                              ; preds = %369
  %378 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %379 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %378, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %25, align 4
  br label %439

382:                                              ; preds = %369, %364
  %383 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %384 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %383, i32 0, i32 0
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, i32, %struct.netlink_ext_ack*)** %386, align 8
  %388 = load %struct.net*, %struct.net** %8, align 8
  %389 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %390 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %391 = load i64, i64* %23, align 8
  %392 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %393 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %396 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @NLM_F_CREATE, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %382
  %402 = load i32, i32* @TCA_ACT_NOREPLACE, align 4
  br label %405

403:                                              ; preds = %382
  %404 = load i32, i32* @TCA_ACT_REPLACE, align 4
  br label %405

405:                                              ; preds = %403, %401
  %406 = phi i32 [ %402, %401 ], [ %404, %403 ]
  %407 = load i32, i32* %27, align 4
  %408 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %409 = call i32 %387(%struct.net* %388, %struct.sk_buff* %389, %struct.tcf_proto* %390, i64 %391, i32 %394, %struct.nlattr** %38, i8** %24, i32 %406, i32 %407, %struct.netlink_ext_ack* %408)
  store i32 %409, i32* %25, align 4
  %410 = load i32, i32* %25, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %438

412:                                              ; preds = %405
  %413 = load %struct.net*, %struct.net** %8, align 8
  %414 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %415 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %416 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %417 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  %418 = bitcast %struct.tcf_block* %417 to %struct.tcf_proto*
  %419 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %420 = load i64, i64* %16, align 8
  %421 = load i8*, i8** %24, align 8
  %422 = load i32, i32* @RTM_NEWTFILTER, align 4
  %423 = load i32, i32* %27, align 4
  %424 = call i32 @tfilter_notify(%struct.net* %413, %struct.sk_buff* %414, %struct.nlmsghdr* %415, %struct.tcf_proto* %416, %struct.tcf_proto* %418, %struct.Qdisc* %419, i64 %420, i8* %421, i32 %422, i32 0, i32 %423)
  %425 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %426 = load i8*, i8** %24, align 8
  %427 = call i32 @tfilter_put(%struct.tcf_proto* %425, i8* %426)
  %428 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %429 = icmp ne %struct.Qdisc* %428, null
  br i1 %429, label %430, label %437

430:                                              ; preds = %412
  %431 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %432 = xor i32 %431, -1
  %433 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %434 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = and i32 %435, %432
  store i32 %436, i32* %434, align 8
  br label %437

437:                                              ; preds = %430, %412
  br label %438

438:                                              ; preds = %437, %405
  br label %439

439:                                              ; preds = %490, %438, %377, %355, %342, %317, %198, %186, %166, %148, %111
  %440 = load i32, i32* %25, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %450

442:                                              ; preds = %439
  %443 = load i32, i32* %26, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %442
  %446 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %447 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %448 = load i32, i32* %27, align 4
  %449 = call i32 @tcf_chain_tp_delete_empty(%struct.tcf_chain* %446, %struct.tcf_proto* %447, i32 %448, i32* null)
  br label %450

450:                                              ; preds = %445, %442, %439
  br label %451

451:                                              ; preds = %450, %293, %280
  %452 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %453 = icmp ne %struct.tcf_chain* %452, null
  br i1 %453, label %454, label %472

454:                                              ; preds = %451
  %455 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %456 = icmp ne %struct.tcf_proto* %455, null
  br i1 %456, label %457, label %465

457:                                              ; preds = %454
  %458 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %459 = call i64 @IS_ERR(%struct.tcf_proto* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %465, label %461

461:                                              ; preds = %457
  %462 = load %struct.tcf_proto*, %struct.tcf_proto** %22, align 8
  %463 = load i32, i32* %27, align 4
  %464 = call i32 @tcf_proto_put(%struct.tcf_proto* %462, i32 %463, i32* null)
  br label %465

465:                                              ; preds = %461, %457, %454
  %466 = load i32, i32* %26, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %465
  %469 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %470 = call i32 @tcf_chain_put(%struct.tcf_chain* %469)
  br label %471

471:                                              ; preds = %468, %465
  br label %472

472:                                              ; preds = %471, %451
  %473 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %474 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  %475 = bitcast %struct.tcf_block* %474 to %struct.tcf_proto*
  %476 = load i32, i32* %27, align 4
  %477 = call i32 @tcf_block_release(%struct.Qdisc* %473, %struct.tcf_proto* %475, i32 %476)
  %478 = load i32, i32* %27, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %472
  %481 = call i32 (...) @rtnl_unlock()
  br label %482

482:                                              ; preds = %480, %472
  %483 = load i32, i32* %25, align 4
  %484 = load i32, i32* @EAGAIN, align 4
  %485 = sub nsw i32 0, %484
  %486 = icmp eq i32 %483, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %482
  store i32 1, i32* %27, align 4
  br label %53

488:                                              ; preds = %482
  %489 = load i32, i32* %25, align 4
  store i32 %489, i32* %4, align 4
  store i32 1, i32* %28, align 4
  br label %494

490:                                              ; preds = %251, %239, %228, %215
  %491 = load %struct.tcf_chain*, %struct.tcf_chain** %20, align 8
  %492 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %491, i32 0, i32 0
  %493 = call i32 @mutex_unlock(i32* %492)
  br label %439

494:                                              ; preds = %488, %103, %88, %61, %49
  %495 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %495)
  %496 = load i32, i32* %4, align 4
  ret i32 %496
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @TC_H_MIN(i32) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i64 @TC_H_MAKE(i32, i32) #1

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

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain*, %struct.tcf_chain_info*, i64, i64, i32) #1

declare dso_local i64 @tcf_auto_prio(i32) #1

declare dso_local i32 @tcf_chain_tp_prev(%struct.tcf_chain*, %struct.tcf_chain_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_proto_create(i32, i64, i64, %struct.tcf_chain*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_tp_insert_unique(%struct.tcf_chain*, %struct.tcf_proto*, i64, i64, i32) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @tfilter_put(%struct.tcf_proto*, i8*) #1

declare dso_local i32 @tfilter_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_proto*, %struct.Qdisc*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @tcf_chain_tp_delete_empty(%struct.tcf_chain*, %struct.tcf_proto*, i32, i32*) #1

declare dso_local i32 @tcf_proto_put(%struct.tcf_proto*, i32, i32*) #1

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
