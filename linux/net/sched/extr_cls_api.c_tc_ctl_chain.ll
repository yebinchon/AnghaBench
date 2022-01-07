; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_ctl_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_ctl_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.Qdisc = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_block = type { i32 }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rtm_tca_policy = common dso_local global i32 0, align 4
@TCA_CHAIN = common dso_local global i64 0, align 8
@TC_ACT_EXT_VAL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Specified chain index exceeds upper limit\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Filter chain already exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Need both RTM_NEWCHAIN and NLM_F_CREATE to create a new chain\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to create filter chain\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot find specified filter chain\00", align 1
@NLM_F_EXCL = common dso_local global i32 0, align 4
@RTM_DELTFILTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to send chain notify message\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Unsupported message type\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @tc_ctl_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_ctl_chain(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tcmsg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.Qdisc*, align 8
  %15 = alloca %struct.tcf_chain*, align 8
  %16 = alloca %struct.tcf_block*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @TCA_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %15, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 129
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load %struct.net*, %struct.net** %8, align 8
  %36 = getelementptr inbounds %struct.net, %struct.net* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAP_NET_ADMIN, align 4
  %39 = call i32 @netlink_ns_capable(%struct.sk_buff* %34, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %254

44:                                               ; preds = %33, %3
  br label %45

45:                                               ; preds = %247, %44
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %47 = load i32, i32* @TCA_MAX, align 4
  %48 = load i32, i32* @rtm_tca_policy, align 4
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %50 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %46, i32 12, %struct.nlattr** %28, i32 %47, i32 %48, %struct.netlink_ext_ack* %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %254

55:                                               ; preds = %45
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %57 = call %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr* %56)
  store %struct.tcmsg* %57, %struct.tcmsg** %11, align 8
  %58 = load %struct.tcmsg*, %struct.tcmsg** %11, align 8
  %59 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  store i64 0, i64* %17, align 8
  %61 = load %struct.net*, %struct.net** %8, align 8
  %62 = load %struct.tcmsg*, %struct.tcmsg** %11, align 8
  %63 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tcmsg*, %struct.tcmsg** %11, align 8
  %66 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %69 = call %struct.tcf_block* @tcf_block_find(%struct.net* %61, %struct.Qdisc** %14, i32* %12, i64* %17, i32 %64, i32 %67, %struct.netlink_ext_ack* %68)
  store %struct.tcf_block* %69, %struct.tcf_block** %16, align 8
  %70 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %71 = call i64 @IS_ERR(%struct.tcf_block* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %75 = call i32 @PTR_ERR(%struct.tcf_block* %74)
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %254

76:                                               ; preds = %55
  %77 = load i64, i64* @TCA_CHAIN, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i64, i64* @TCA_CHAIN, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i32 @nla_get_u32(%struct.nlattr* %84)
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %81
  %88 = phi i32 [ %85, %81 ], [ 0, %86 ]
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @TC_ACT_EXT_VAL_MASK, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %94 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %18, align 4
  br label %239

97:                                               ; preds = %87
  %98 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %99 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call %struct.tcf_chain* @tcf_chain_lookup(%struct.tcf_block* %101, i32 %102)
  store %struct.tcf_chain* %103, %struct.tcf_chain** %15, align 8
  %104 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %105 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %149

108:                                              ; preds = %97
  %109 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %110 = icmp ne %struct.tcf_chain* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %113 = call i64 @tcf_chain_held_by_acts_only(%struct.tcf_chain* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %117 = call i32 @tcf_chain_hold(%struct.tcf_chain* %116)
  br label %123

118:                                              ; preds = %111
  %119 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %120 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @EEXIST, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %18, align 4
  br label %250

123:                                              ; preds = %115
  br label %148

124:                                              ; preds = %108
  %125 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %126 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NLM_F_CREATE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %124
  %132 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %133 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %132, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @ENOENT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %18, align 4
  br label %250

136:                                              ; preds = %124
  %137 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call %struct.tcf_chain* @tcf_chain_create(%struct.tcf_block* %137, i32 %138)
  store %struct.tcf_chain* %139, %struct.tcf_chain** %15, align 8
  %140 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %141 = icmp ne %struct.tcf_chain* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %144 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %18, align 4
  br label %250

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %123
  br label %164

149:                                              ; preds = %97
  %150 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %151 = icmp ne %struct.tcf_chain* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %154 = call i64 @tcf_chain_held_by_acts_only(%struct.tcf_chain* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152, %149
  %157 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %158 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %18, align 4
  br label %250

161:                                              ; preds = %152
  %162 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %163 = call i32 @tcf_chain_hold(%struct.tcf_chain* %162)
  br label %164

164:                                              ; preds = %161, %148
  %165 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %166 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 128
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %171 = call i32 @tcf_chain_hold(%struct.tcf_chain* %170)
  %172 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %173 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %164
  %175 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %176 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %179 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %230 [
    i32 128, label %181
    i32 130, label %197
    i32 129, label %211
  ]

181:                                              ; preds = %174
  %182 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %183 = load %struct.net*, %struct.net** %8, align 8
  %184 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %185 = call i32 @tc_chain_tmplt_add(%struct.tcf_chain* %182, %struct.net* %183, %struct.nlattr** %28, %struct.netlink_ext_ack* %184)
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %190 = call i32 @tcf_chain_put_explicitly_created(%struct.tcf_chain* %189)
  br label %236

191:                                              ; preds = %181
  %192 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %193 = load i32, i32* @NLM_F_CREATE, align 4
  %194 = load i32, i32* @NLM_F_EXCL, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @tc_chain_notify(%struct.tcf_chain* %192, %struct.sk_buff* null, i32 0, i32 %195, i32 128, i32 0)
  br label %235

197:                                              ; preds = %174
  %198 = load %struct.net*, %struct.net** %8, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %201 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %204 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %205 = load i32, i32* @RTM_DELTFILTER, align 4
  %206 = call i32 @tfilter_notify_chain(%struct.net* %198, %struct.sk_buff* %199, %struct.tcf_block* %200, %struct.Qdisc* %201, i32 %202, %struct.nlmsghdr* %203, %struct.tcf_chain* %204, i32 %205, i32 1)
  %207 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %208 = call i32 @tcf_chain_flush(%struct.tcf_chain* %207, i32 1)
  %209 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %210 = call i32 @tcf_chain_put_explicitly_created(%struct.tcf_chain* %209)
  br label %235

211:                                              ; preds = %174
  %212 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %215 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %218 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %221 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @tc_chain_notify(%struct.tcf_chain* %212, %struct.sk_buff* %213, i32 %216, i32 %219, i32 %222, i32 1)
  store i32 %223, i32* %18, align 4
  %224 = load i32, i32* %18, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %211
  %227 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %228 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %227, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %211
  br label %235

230:                                              ; preds = %174
  %231 = load i32, i32* @EOPNOTSUPP, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %18, align 4
  %233 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %234 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %236

235:                                              ; preds = %229, %197, %191
  br label %236

236:                                              ; preds = %235, %230, %188
  %237 = load %struct.tcf_chain*, %struct.tcf_chain** %15, align 8
  %238 = call i32 @tcf_chain_put(%struct.tcf_chain* %237)
  br label %239

239:                                              ; preds = %250, %236, %92
  %240 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %241 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %242 = call i32 @tcf_block_release(%struct.Qdisc* %240, %struct.tcf_block* %241, i32 1)
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* @EAGAIN, align 4
  %245 = sub nsw i32 0, %244
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  br label %45

248:                                              ; preds = %239
  %249 = load i32, i32* %18, align 4
  store i32 %249, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %254

250:                                              ; preds = %156, %142, %131, %118
  %251 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  %252 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %251, i32 0, i32 0
  %253 = call i32 @mutex_unlock(i32* %252)
  br label %239

254:                                              ; preds = %248, %73, %53, %41
  %255 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_ns_capable(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.tcf_block* @tcf_block_find(%struct.net*, %struct.Qdisc**, i32*, i64*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.tcf_block*) #1

declare dso_local i32 @PTR_ERR(%struct.tcf_block*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_chain_lookup(%struct.tcf_block*, i32) #1

declare dso_local i64 @tcf_chain_held_by_acts_only(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_chain_hold(%struct.tcf_chain*) #1

declare dso_local %struct.tcf_chain* @tcf_chain_create(%struct.tcf_block*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tc_chain_tmplt_add(%struct.tcf_chain*, %struct.net*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_chain_put_explicitly_created(%struct.tcf_chain*) #1

declare dso_local i32 @tc_chain_notify(%struct.tcf_chain*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @tfilter_notify_chain(%struct.net*, %struct.sk_buff*, %struct.tcf_block*, %struct.Qdisc*, i32, %struct.nlmsghdr*, %struct.tcf_chain*, i32, i32) #1

declare dso_local i32 @tcf_chain_flush(%struct.tcf_chain*, i32) #1

declare dso_local i32 @tcf_chain_put(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_block_release(%struct.Qdisc*, %struct.tcf_block*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
