; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_get_tfilter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_get_tfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i64, i32, i32, i32, i32 }
%struct.Qdisc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_chain_info = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* (%struct.tcf_proto*, i32)*, i32 }
%struct.tcf_proto = type { %struct.TYPE_6__* }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@rtm_tca_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid filter command with priority of zero\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Specified TC filter name too long\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QDISC_CLASS_OPS_DOIT_UNLOCKED = common dso_local global i32 0, align 4
@TCA_CHAIN = common dso_local global i64 0, align 8
@TC_ACT_EXT_VAL_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Specified chain index exceeds upper limit\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cannot find specified filter chain\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Filter with specified priority/protocol not found\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Specified filter kind does not match existing one\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Specified filter handle not found\00", align 1
@RTM_NEWTFILTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to send filter notify message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_get_tfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_get_tfilter(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
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
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net* @sock_net(i32 %29)
  store %struct.net* %30, %struct.net** %8, align 8
  %31 = load i32, i32* @TCA_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %9, align 8
  %35 = alloca %struct.nlattr*, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %17, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %19, align 8
  store %struct.tcf_block* null, %struct.tcf_block** %20, align 8
  store %struct.tcf_proto* null, %struct.tcf_proto** %21, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %23, align 8
  store i32 0, i32* %25, align 4
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %40 = load i32, i32* @TCA_MAX, align 4
  %41 = load i32, i32* @rtm_tca_policy, align 4
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %39, i32 24, %struct.nlattr** %35, i32 %40, i32 %41, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %24, align 4
  %44 = load i32, i32* %24, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %24, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %297

48:                                               ; preds = %3
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %49)
  store %struct.tcmsg* %50, %struct.tcmsg** %12, align 8
  %51 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %52 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @TC_H_MIN(i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %56 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @TC_H_MAJ(i32 %57)
  store i64 %58, i64* %14, align 8
  %59 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %60 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %66 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %297

69:                                               ; preds = %48
  %70 = load %struct.net*, %struct.net** %8, align 8
  %71 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %72 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %75 = call i32 @__tcf_qdisc_find(%struct.net* %70, %struct.Qdisc** %17, i64* %15, i32 %73, i32 0, %struct.netlink_ext_ack* %74)
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %24, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %24, align 4
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %297

80:                                               ; preds = %69
  %81 = load i64, i64* @TCA_KIND, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i64 @tcf_proto_check_kind(%struct.nlattr* %83, i8* %38)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %88 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %24, align 4
  br label %268

91:                                               ; preds = %80
  %92 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %93 = icmp ne %struct.Qdisc* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %96 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @QDISC_CLASS_OPS_DOIT_UNLOCKED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %94, %91
  %106 = call i32 @tcf_proto_is_unlocked(i8* %38)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105, %94
  store i32 1, i32* %25, align 4
  %109 = call i32 (...) @rtnl_lock()
  br label %110

110:                                              ; preds = %108, %105
  %111 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %114 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %117 = call i32 @__tcf_qdisc_cl_find(%struct.Qdisc* %111, i64 %112, i64* %22, i32 %115, %struct.netlink_ext_ack* %116)
  store i32 %117, i32* %24, align 4
  %118 = load i32, i32* %24, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %268

121:                                              ; preds = %110
  %122 = load %struct.net*, %struct.net** %8, align 8
  %123 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %124 = load i64, i64* %22, align 8
  %125 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %126 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %129 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %132 = call %struct.tcf_proto* @__tcf_block_find(%struct.net* %122, %struct.Qdisc* %123, i64 %124, i32 %127, i32 %130, %struct.netlink_ext_ack* %131)
  %133 = bitcast %struct.tcf_proto* %132 to %struct.tcf_block*
  store %struct.tcf_block* %133, %struct.tcf_block** %20, align 8
  %134 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %135 = bitcast %struct.tcf_block* %134 to %struct.tcf_proto*
  %136 = call i64 @IS_ERR(%struct.tcf_proto* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %140 = bitcast %struct.tcf_block* %139 to %struct.tcf_proto*
  %141 = call i32 @PTR_ERR(%struct.tcf_proto* %140)
  store i32 %141, i32* %24, align 4
  br label %268

142:                                              ; preds = %121
  %143 = load i64, i64* @TCA_CHAIN, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = icmp ne %struct.nlattr* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i64, i64* @TCA_CHAIN, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = call i64 @nla_get_u32(%struct.nlattr* %150)
  br label %153

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %147
  %154 = phi i64 [ %151, %147 ], [ 0, %152 ]
  store i64 %154, i64* %16, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* @TC_ACT_EXT_VAL_MASK, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %160 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %159, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %24, align 4
  br label %268

163:                                              ; preds = %153
  %164 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %165 = bitcast %struct.tcf_block* %164 to %struct.tcf_proto*
  %166 = load i64, i64* %16, align 8
  %167 = call %struct.tcf_chain* @tcf_chain_get(%struct.tcf_proto* %165, i64 %166, i32 0)
  store %struct.tcf_chain* %167, %struct.tcf_chain** %19, align 8
  %168 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %169 = icmp ne %struct.tcf_chain* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %172 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %24, align 4
  br label %268

175:                                              ; preds = %163
  %176 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %177 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %176, i32 0, i32 0
  %178 = call i32 @mutex_lock(i32* %177)
  %179 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* %14, align 8
  %182 = call %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain* %179, %struct.tcf_chain_info* %18, i64 %180, i64 %181, i32 0)
  store %struct.tcf_proto* %182, %struct.tcf_proto** %21, align 8
  %183 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %184 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %187 = icmp ne %struct.tcf_proto* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %175
  %189 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %190 = call i64 @IS_ERR(%struct.tcf_proto* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %188, %175
  %193 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %194 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %193, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %195 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %196 = icmp ne %struct.tcf_proto* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %199 = call i32 @PTR_ERR(%struct.tcf_proto* %198)
  br label %203

200:                                              ; preds = %192
  %201 = load i32, i32* @ENOENT, align 4
  %202 = sub nsw i32 0, %201
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i32 [ %199, %197 ], [ %202, %200 ]
  store i32 %204, i32* %24, align 4
  br label %268

205:                                              ; preds = %188
  %206 = load i64, i64* @TCA_KIND, align 8
  %207 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %206
  %208 = load %struct.nlattr*, %struct.nlattr** %207, align 8
  %209 = icmp ne %struct.nlattr* %208, null
  br i1 %209, label %210, label %226

210:                                              ; preds = %205
  %211 = load i64, i64* @TCA_KIND, align 8
  %212 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %211
  %213 = load %struct.nlattr*, %struct.nlattr** %212, align 8
  %214 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %215 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @nla_strcmp(%struct.nlattr* %213, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %210
  %222 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %223 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %222, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %24, align 4
  br label %268

226:                                              ; preds = %210, %205
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %229 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i8* (%struct.tcf_proto*, i32)*, i8* (%struct.tcf_proto*, i32)** %231, align 8
  %233 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %234 = load %struct.tcmsg*, %struct.tcmsg** %12, align 8
  %235 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i8* %232(%struct.tcf_proto* %233, i32 %236)
  store i8* %237, i8** %23, align 8
  %238 = load i8*, i8** %23, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %245, label %240

240:                                              ; preds = %227
  %241 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %242 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %241, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %243 = load i32, i32* @ENOENT, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %24, align 4
  br label %264

245:                                              ; preds = %227
  %246 = load %struct.net*, %struct.net** %8, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %248 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %249 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %250 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %251 = bitcast %struct.tcf_block* %250 to %struct.tcf_proto*
  %252 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %253 = load i64, i64* %15, align 8
  %254 = load i8*, i8** %23, align 8
  %255 = load i32, i32* @RTM_NEWTFILTER, align 4
  %256 = load i32, i32* %25, align 4
  %257 = call i32 @tfilter_notify(%struct.net* %246, %struct.sk_buff* %247, %struct.nlmsghdr* %248, %struct.tcf_proto* %249, %struct.tcf_proto* %251, %struct.Qdisc* %252, i64 %253, i8* %254, i32 %255, i32 1, i32 %256)
  store i32 %257, i32* %24, align 4
  %258 = load i32, i32* %24, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %245
  %261 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %262 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %261, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %245
  br label %264

264:                                              ; preds = %263, %240
  %265 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %266 = load i8*, i8** %23, align 8
  %267 = call i32 @tfilter_put(%struct.tcf_proto* %265, i8* %266)
  br label %268

268:                                              ; preds = %264, %221, %203, %170, %158, %138, %120, %86
  %269 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %270 = icmp ne %struct.tcf_chain* %269, null
  br i1 %270, label %271, label %285

271:                                              ; preds = %268
  %272 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %273 = icmp ne %struct.tcf_proto* %272, null
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  %275 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %276 = call i64 @IS_ERR(%struct.tcf_proto* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %274
  %279 = load %struct.tcf_proto*, %struct.tcf_proto** %21, align 8
  %280 = load i32, i32* %25, align 4
  %281 = call i32 @tcf_proto_put(%struct.tcf_proto* %279, i32 %280, i32* null)
  br label %282

282:                                              ; preds = %278, %274, %271
  %283 = load %struct.tcf_chain*, %struct.tcf_chain** %19, align 8
  %284 = call i32 @tcf_chain_put(%struct.tcf_chain* %283)
  br label %285

285:                                              ; preds = %282, %268
  %286 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  %287 = load %struct.tcf_block*, %struct.tcf_block** %20, align 8
  %288 = bitcast %struct.tcf_block* %287 to %struct.tcf_proto*
  %289 = load i32, i32* %25, align 4
  %290 = call i32 @tcf_block_release(%struct.Qdisc* %286, %struct.tcf_proto* %288, i32 %289)
  %291 = load i32, i32* %25, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %285
  %294 = call i32 (...) @rtnl_unlock()
  br label %295

295:                                              ; preds = %293, %285
  %296 = load i32, i32* %24, align 4
  store i32 %296, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %297

297:                                              ; preds = %295, %78, %64, %46
  %298 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %298)
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

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

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_tp_find(%struct.tcf_chain*, %struct.tcf_chain_info*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @tfilter_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_proto*, %struct.Qdisc*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @tfilter_put(%struct.tcf_proto*, i8*) #1

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
