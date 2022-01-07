; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tc_dump_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tc_dump_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i64*, i32, %struct.nlmsghdr*, i32 }
%struct.nlmsghdr = type { i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action_ops = type { i32 (%struct.net.0*, %struct.sk_buff.1*, %struct.netlink_callback.2*, i32, %struct.tc_action_ops*, i32*)*, i32 }
%struct.net.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.netlink_callback.2 = type opaque
%struct.tcamsg = type { i64, i64, i32 }
%struct.nla_bitfield32 = type { i64 }
%struct.TYPE_2__ = type { i64 }

@TCA_ROOT_MAX = common dso_local global i32 0, align 4
@tcaa_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"tc_dump_action: action bad kind\0A\00", align 1
@TCA_ROOT_FLAGS = common dso_local global i64 0, align 8
@TCA_ROOT_TIME_DELTA = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i32 0, align 4
@TCA_ROOT_COUNT = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i32 0, align 4
@RTM_GETACTION = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tc_dump_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_action(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.tc_action_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcamsg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nla_bitfield32, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.nla_bitfield32, align 8
  %23 = alloca %struct.TYPE_2__, align 8
  %24 = alloca %struct.TYPE_2__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.net* @sock_net(i32 %27)
  store %struct.net* %28, %struct.net** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i8* @skb_tail_pointer(%struct.sk_buff* %29)
  store i8* %30, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 2
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %32, align 8
  %34 = call %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.tcamsg* %34, %struct.tcamsg** %12, align 8
  %35 = load i32, i32* @TCA_ROOT_MAX, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %13, align 8
  %39 = alloca %struct.nlattr*, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  store %struct.nlattr* null, %struct.nlattr** %15, align 8
  store i64 0, i64* %16, align 8
  store %struct.nlattr* null, %struct.nlattr** %17, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 2
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %41, align 8
  %43 = load i32, i32* @TCA_ROOT_MAX, align 4
  %44 = load i32, i32* @tcaa_policy, align 4
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %46 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %42, i32 24, %struct.nlattr** %39, i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %245

53:                                               ; preds = %2
  %54 = call %struct.nlattr* @find_dump_kind(%struct.nlattr** %39)
  store %struct.nlattr* %54, %struct.nlattr** %17, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %56 = icmp eq %struct.nlattr* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %245

59:                                               ; preds = %53
  %60 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %61 = call %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr* %60)
  store %struct.tc_action_ops* %61, %struct.tc_action_ops** %10, align 8
  %62 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %63 = icmp eq %struct.tc_action_ops* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %245

65:                                               ; preds = %59
  %66 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %67 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* @TCA_ROOT_FLAGS, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %65
  %75 = load i64, i64* @TCA_ROOT_FLAGS, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i64 @nla_get_bitfield32(%struct.nlattr* %77)
  %79 = getelementptr inbounds %struct.nla_bitfield32, %struct.nla_bitfield32* %22, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = bitcast %struct.nla_bitfield32* %18 to i8*
  %81 = bitcast %struct.nla_bitfield32* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 8, i1 false)
  %82 = getelementptr inbounds %struct.nla_bitfield32, %struct.nla_bitfield32* %18, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %85 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  store i64 %83, i64* %87, align 8
  br label %88

88:                                               ; preds = %74, %65
  %89 = load i64, i64* @TCA_ROOT_TIME_DELTA, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i64, i64* @TCA_ROOT_TIME_DELTA, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = call i64 @nla_get_u32(%struct.nlattr* %96)
  store i64 %97, i64* %19, align 8
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @NETLINK_CB(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %108 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %107, i32 0, i32 2
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %108, align 8
  %110 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %113 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %112, i32 0, i32 2
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %113, align 8
  %115 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %99, i64 %106, i32 %111, i32 %116, i32 24, i32 0)
  store %struct.nlmsghdr* %117, %struct.nlmsghdr** %7, align 8
  %118 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %119 = icmp ne %struct.nlmsghdr* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %98
  br label %234

121:                                              ; preds = %98
  %122 = load i64, i64* %19, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i64, i64* @jiffies, align 8
  %126 = load i64, i64* %19, align 8
  %127 = call i64 @msecs_to_jiffies(i64 %126)
  %128 = sub i64 %125, %127
  store i64 %128, i64* %16, align 8
  br label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %131 = call %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr* %130)
  store %struct.tcamsg* %131, %struct.tcamsg** %12, align 8
  %132 = load i32, i32* @AF_UNSPEC, align 4
  %133 = load %struct.tcamsg*, %struct.tcamsg** %12, align 8
  %134 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.tcamsg*, %struct.tcamsg** %12, align 8
  %136 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.tcamsg*, %struct.tcamsg** %12, align 8
  %138 = getelementptr inbounds %struct.tcamsg, %struct.tcamsg* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %141 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 3
  store i64 %139, i64* %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = load i32, i32* @TCA_ROOT_COUNT, align 4
  %146 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %144, i32 %145, i32 8)
  store %struct.nlattr* %146, %struct.nlattr** %15, align 8
  %147 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %148 = icmp ne %struct.nlattr* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %129
  br label %234

150:                                              ; preds = %129
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = load i32, i32* @TCA_ACT_TAB, align 4
  %153 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %151, i32 %152)
  store %struct.nlattr* %153, %struct.nlattr** %9, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %155 = icmp eq %struct.nlattr* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %234

157:                                              ; preds = %150
  %158 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %159 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %158, i32 0, i32 0
  %160 = load i32 (%struct.net.0*, %struct.sk_buff.1*, %struct.netlink_callback.2*, i32, %struct.tc_action_ops*, i32*)*, i32 (%struct.net.0*, %struct.sk_buff.1*, %struct.netlink_callback.2*, i32, %struct.tc_action_ops*, i32*)** %159, align 8
  %161 = load %struct.net*, %struct.net** %6, align 8
  %162 = bitcast %struct.net* %161 to %struct.net.0*
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = bitcast %struct.sk_buff* %163 to %struct.sk_buff.1*
  %165 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %166 = bitcast %struct.netlink_callback* %165 to %struct.netlink_callback.2*
  %167 = load i32, i32* @RTM_GETACTION, align 4
  %168 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %169 = call i32 %160(%struct.net.0* %162, %struct.sk_buff.1* %164, %struct.netlink_callback.2* %166, i32 %167, %struct.tc_action_ops* %168, i32* null)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %157
  br label %234

173:                                              ; preds = %157
  %174 = load i32, i32* %11, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %179 = call i32 @nla_nest_end(%struct.sk_buff* %177, %struct.nlattr* %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %11, align 4
  %183 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %184 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %20, align 8
  %188 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %189 = call i32 @nla_data(%struct.nlattr* %188)
  %190 = call i32 @memcpy(i32 %189, i64* %20, i32 8)
  %191 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %192 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 1
  store i64 0, i64* %194, align 8
  br label %199

195:                                              ; preds = %173
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @nlmsg_trim(%struct.sk_buff* %196, i8* %197)
  br label %199

199:                                              ; preds = %195, %176
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = call i8* @skb_tail_pointer(%struct.sk_buff* %200)
  %202 = load i8*, i8** %8, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = trunc i64 %205 to i32
  %207 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %208 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %210 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @NETLINK_CB(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %212, i64* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %199
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load i32, i32* @NLM_F_MULTI, align 4
  %222 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %223 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %217, %199
  %227 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %228 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @module_put(i32 %229)
  %231 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %245

234:                                              ; preds = %172, %156, %149, %120
  %235 = load %struct.tc_action_ops*, %struct.tc_action_ops** %10, align 8
  %236 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @module_put(i32 %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = call i32 @nlmsg_trim(%struct.sk_buff* %239, i8* %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %245

245:                                              ; preds = %234, %226, %64, %57, %51
  %246 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcamsg* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, i32) #1

declare dso_local %struct.nlattr* @find_dump_kind(%struct.nlattr**) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.tc_action_ops* @tc_lookup_action(%struct.nlattr*) #1

declare dso_local i64 @nla_get_bitfield32(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @NETLINK_CB(i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

declare dso_local i32 @module_put(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
