; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_tunnel_key_params = type { i32, %struct.metadata_dst* }
%struct.metadata_dst = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_tunnel_key = type { i32, i32, i32 }
%struct.tcf_tunnel_key = type { i32, i32 }
%struct.in6_addr = type { i32 }

@tunnel_key_net_id = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Tunnel requires attributes to be passed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tunnel_key_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to parse nested tunnel key attributes\00", align 1
@TCA_TUNNEL_KEY_PARMS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Missing tunnel key parameters\00", align 1
@TCA_TUNNEL_KEY_ENC_KEY_ID = common dso_local global i64 0, align 8
@TUNNEL_KEY = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TCA_TUNNEL_KEY_NO_CSUM = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_DST_PORT = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_OPTS = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_TOS = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_TTL = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_IPV4_SRC = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_IPV4_DST = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_IPV6_SRC = common dso_local global i64 0, align 8
@TCA_TUNNEL_KEY_ENC_IPV6_DST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Missing either ipv4 or ipv6 src and dst\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot allocate tunnel metadata dst\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unknown tunnel key action\00", align 1
@act_tunnel_key_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Cannot create TC IDR\00", align 1
@ACT_P_CREATED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"TC IDR already exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Cannot allocate tunnel key parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tunnel_key_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel_key_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.tc_action**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcf_proto*, align 8
  %19 = alloca %struct.netlink_ext_ack*, align 8
  %20 = alloca %struct.tc_action_net*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.tcf_tunnel_key_params*, align 8
  %24 = alloca %struct.metadata_dst*, align 8
  %25 = alloca %struct.tcf_chain*, align 8
  %26 = alloca %struct.tc_tunnel_key*, align 8
  %27 = alloca %struct.tcf_tunnel_key*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.in6_addr, align 4
  %43 = alloca %struct.in6_addr, align 4
  %44 = alloca %struct.in6_addr, align 4
  %45 = alloca %struct.in6_addr, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %46 = load %struct.net*, %struct.net** %11, align 8
  %47 = load i32, i32* @tunnel_key_net_id, align 4
  %48 = call %struct.tc_action_net* @net_generic(%struct.net* %46, i32 %47)
  store %struct.tc_action_net* %48, %struct.tc_action_net** %20, align 8
  %49 = load i32, i32* @TCA_TUNNEL_KEY_MAX, align 4
  %50 = add nsw i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %21, align 8
  %53 = alloca %struct.nlattr*, i64 %51, align 16
  store i64 %51, i64* %22, align 8
  store %struct.metadata_dst* null, %struct.metadata_dst** %24, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %25, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %35, align 4
  %54 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %9
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %58 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

61:                                               ; preds = %9
  %62 = load i32, i32* @TCA_TUNNEL_KEY_MAX, align 4
  %63 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %64 = load i32, i32* @tunnel_key_policy, align 4
  %65 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %66 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %53, i32 %62, %struct.nlattr* %63, i32 %64, %struct.netlink_ext_ack* %65)
  store i32 %66, i32* %37, align 4
  %67 = load i32, i32* %37, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %71 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %37, align 4
  store i32 %72, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

73:                                               ; preds = %61
  %74 = load i64, i64* @TCA_TUNNEL_KEY_PARMS, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %80 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

83:                                               ; preds = %73
  %84 = load i64, i64* @TCA_TUNNEL_KEY_PARMS, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call %struct.tc_tunnel_key* @nla_data(%struct.nlattr* %86)
  store %struct.tc_tunnel_key* %87, %struct.tc_tunnel_key** %26, align 8
  %88 = load %struct.tc_tunnel_key*, %struct.tc_tunnel_key** %26, align 8
  %89 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %36, align 4
  %91 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %92 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %91, i32* %36, %struct.tc_action** %92, i32 %93)
  store i32 %94, i32* %37, align 4
  %95 = load i32, i32* %37, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %37, align 4
  store i32 %98, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

99:                                               ; preds = %83
  %100 = load i32, i32* %37, align 4
  store i32 %100, i32* %28, align 4
  %101 = load i32, i32* %28, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

107:                                              ; preds = %103, %99
  %108 = load %struct.tc_tunnel_key*, %struct.tc_tunnel_key** %26, align 8
  %109 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %288 [
    i32 129, label %111
    i32 128, label %112
  ]

111:                                              ; preds = %107
  br label %293

112:                                              ; preds = %107
  %113 = load i64, i64* @TCA_TUNNEL_KEY_ENC_KEY_ID, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i64, i64* @TCA_TUNNEL_KEY_ENC_KEY_ID, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i32 @nla_get_be32(%struct.nlattr* %120)
  store i32 %121, i32* %39, align 4
  %122 = load i32, i32* %39, align 4
  %123 = call i32 @key32_to_tunnel_id(i32 %122)
  store i32 %123, i32* %30, align 4
  %124 = load i32, i32* @TUNNEL_KEY, align 4
  store i32 %124, i32* %32, align 4
  br label %125

125:                                              ; preds = %117, %112
  %126 = load i32, i32* @TUNNEL_CSUM, align 4
  %127 = load i32, i32* %32, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %32, align 4
  %129 = load i64, i64* @TCA_TUNNEL_KEY_NO_CSUM, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = icmp ne %struct.nlattr* %131, null
  br i1 %132, label %133, label %144

133:                                              ; preds = %125
  %134 = load i64, i64* @TCA_TUNNEL_KEY_NO_CSUM, align 8
  %135 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %134
  %136 = load %struct.nlattr*, %struct.nlattr** %135, align 8
  %137 = call i32 @nla_get_u8(%struct.nlattr* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @TUNNEL_CSUM, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %32, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %32, align 4
  br label %144

144:                                              ; preds = %139, %133, %125
  %145 = load i64, i64* @TCA_TUNNEL_KEY_ENC_DST_PORT, align 8
  %146 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %145
  %147 = load %struct.nlattr*, %struct.nlattr** %146, align 8
  %148 = icmp ne %struct.nlattr* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i64, i64* @TCA_TUNNEL_KEY_ENC_DST_PORT, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = call i32 @nla_get_be16(%struct.nlattr* %152)
  store i32 %153, i32* %29, align 4
  br label %154

154:                                              ; preds = %149, %144
  %155 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPTS, align 8
  %156 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %155
  %157 = load %struct.nlattr*, %struct.nlattr** %156, align 8
  %158 = icmp ne %struct.nlattr* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPTS, align 8
  %161 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %160
  %162 = load %struct.nlattr*, %struct.nlattr** %161, align 8
  %163 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %164 = call i32 @tunnel_key_get_opts_len(%struct.nlattr* %162, %struct.netlink_ext_ack* %163)
  store i32 %164, i32* %31, align 4
  %165 = load i32, i32* %31, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* %31, align 4
  store i32 %168, i32* %35, align 4
  br label %410

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169, %154
  store i32 0, i32* %33, align 4
  %171 = load i64, i64* @TCA_TUNNEL_KEY_ENC_TOS, align 8
  %172 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %171
  %173 = load %struct.nlattr*, %struct.nlattr** %172, align 8
  %174 = icmp ne %struct.nlattr* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i64, i64* @TCA_TUNNEL_KEY_ENC_TOS, align 8
  %177 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %176
  %178 = load %struct.nlattr*, %struct.nlattr** %177, align 8
  %179 = call i32 @nla_get_u8(%struct.nlattr* %178)
  store i32 %179, i32* %33, align 4
  br label %180

180:                                              ; preds = %175, %170
  store i32 0, i32* %34, align 4
  %181 = load i64, i64* @TCA_TUNNEL_KEY_ENC_TTL, align 8
  %182 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %181
  %183 = load %struct.nlattr*, %struct.nlattr** %182, align 8
  %184 = icmp ne %struct.nlattr* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load i64, i64* @TCA_TUNNEL_KEY_ENC_TTL, align 8
  %187 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %186
  %188 = load %struct.nlattr*, %struct.nlattr** %187, align 8
  %189 = call i32 @nla_get_u8(%struct.nlattr* %188)
  store i32 %189, i32* %34, align 4
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV4_SRC, align 8
  %192 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %191
  %193 = load %struct.nlattr*, %struct.nlattr** %192, align 8
  %194 = icmp ne %struct.nlattr* %193, null
  br i1 %194, label %195, label %218

195:                                              ; preds = %190
  %196 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV4_DST, align 8
  %197 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %196
  %198 = load %struct.nlattr*, %struct.nlattr** %197, align 8
  %199 = icmp ne %struct.nlattr* %198, null
  br i1 %199, label %200, label %218

200:                                              ; preds = %195
  %201 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV4_SRC, align 8
  %202 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %201
  %203 = load %struct.nlattr*, %struct.nlattr** %202, align 8
  %204 = call i32 @nla_get_in_addr(%struct.nlattr* %203)
  store i32 %204, i32* %40, align 4
  %205 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV4_DST, align 8
  %206 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %205
  %207 = load %struct.nlattr*, %struct.nlattr** %206, align 8
  %208 = call i32 @nla_get_in_addr(%struct.nlattr* %207)
  store i32 %208, i32* %41, align 4
  %209 = load i32, i32* %40, align 4
  %210 = load i32, i32* %41, align 4
  %211 = load i32, i32* %33, align 4
  %212 = load i32, i32* %34, align 4
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* %32, align 4
  %215 = load i32, i32* %30, align 4
  %216 = load i32, i32* %31, align 4
  %217 = call %struct.metadata_dst* @__ip_tun_set_dst(i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  store %struct.metadata_dst* %217, %struct.metadata_dst** %24, align 8
  br label %255

218:                                              ; preds = %195, %190
  %219 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV6_SRC, align 8
  %220 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %219
  %221 = load %struct.nlattr*, %struct.nlattr** %220, align 8
  %222 = icmp ne %struct.nlattr* %221, null
  br i1 %222, label %223, label %249

223:                                              ; preds = %218
  %224 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV6_DST, align 8
  %225 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %224
  %226 = load %struct.nlattr*, %struct.nlattr** %225, align 8
  %227 = icmp ne %struct.nlattr* %226, null
  br i1 %227, label %228, label %249

228:                                              ; preds = %223
  %229 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV6_SRC, align 8
  %230 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %229
  %231 = load %struct.nlattr*, %struct.nlattr** %230, align 8
  %232 = call i32 @nla_get_in6_addr(%struct.nlattr* %231)
  %233 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %44, i32 0, i32 0
  store i32 %232, i32* %233, align 4
  %234 = bitcast %struct.in6_addr* %42 to i8*
  %235 = bitcast %struct.in6_addr* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %234, i8* align 4 %235, i64 4, i1 false)
  %236 = load i64, i64* @TCA_TUNNEL_KEY_ENC_IPV6_DST, align 8
  %237 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %236
  %238 = load %struct.nlattr*, %struct.nlattr** %237, align 8
  %239 = call i32 @nla_get_in6_addr(%struct.nlattr* %238)
  %240 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0
  store i32 %239, i32* %240, align 4
  %241 = bitcast %struct.in6_addr* %43 to i8*
  %242 = bitcast %struct.in6_addr* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %241, i8* align 4 %242, i64 4, i1 false)
  %243 = load i32, i32* %33, align 4
  %244 = load i32, i32* %34, align 4
  %245 = load i32, i32* %29, align 4
  %246 = load i32, i32* %32, align 4
  %247 = load i32, i32* %30, align 4
  %248 = call %struct.metadata_dst* @__ipv6_tun_set_dst(%struct.in6_addr* %42, %struct.in6_addr* %43, i32 %243, i32 %244, i32 %245, i32 0, i32 %246, i32 %247, i32 0)
  store %struct.metadata_dst* %248, %struct.metadata_dst** %24, align 8
  br label %254

249:                                              ; preds = %223, %218
  %250 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %251 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %250, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %35, align 4
  br label %410

254:                                              ; preds = %228
  br label %255

255:                                              ; preds = %254, %200
  %256 = load %struct.metadata_dst*, %struct.metadata_dst** %24, align 8
  %257 = icmp ne %struct.metadata_dst* %256, null
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %260 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %259, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %35, align 4
  br label %410

263:                                              ; preds = %255
  %264 = load i32, i32* %31, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load i64, i64* @TCA_TUNNEL_KEY_ENC_OPTS, align 8
  %268 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %267
  %269 = load %struct.nlattr*, %struct.nlattr** %268, align 8
  %270 = load %struct.metadata_dst*, %struct.metadata_dst** %24, align 8
  %271 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i32, i32* %31, align 4
  %274 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %275 = call i32 @tunnel_key_opts_set(%struct.nlattr* %269, %struct.TYPE_4__* %272, i32 %273, %struct.netlink_ext_ack* %274)
  store i32 %275, i32* %35, align 4
  %276 = load i32, i32* %35, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %266
  br label %402

279:                                              ; preds = %266
  br label %280

280:                                              ; preds = %279, %263
  %281 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %282 = load %struct.metadata_dst*, %struct.metadata_dst** %24, align 8
  %283 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %281
  store i32 %287, i32* %285, align 4
  br label %293

288:                                              ; preds = %107
  %289 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %290 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %289, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %291 = load i32, i32* @EINVAL, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %35, align 4
  br label %410

293:                                              ; preds = %280, %111
  %294 = load i32, i32* %28, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %293
  %297 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %298 = load i32, i32* %36, align 4
  %299 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %300 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @tcf_idr_create(%struct.tc_action_net* %297, i32 %298, %struct.nlattr* %299, %struct.tc_action** %300, i32* @act_tunnel_key_ops, i32 %301, i32 1)
  store i32 %302, i32* %35, align 4
  %303 = load i32, i32* %35, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %296
  %306 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %307 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %402

308:                                              ; preds = %296
  %309 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %309, i32* %35, align 4
  br label %319

310:                                              ; preds = %293
  %311 = load i32, i32* %15, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %318, label %313

313:                                              ; preds = %310
  %314 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %315 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %314, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %316 = load i32, i32* @EEXIST, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %35, align 4
  br label %402

318:                                              ; preds = %310
  br label %319

319:                                              ; preds = %318, %308
  %320 = load %struct.tc_tunnel_key*, %struct.tc_tunnel_key** %26, align 8
  %321 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %324 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %325 = call i32 @tcf_action_check_ctrlact(i32 %322, %struct.tcf_proto* %323, %struct.tcf_chain** %25, %struct.netlink_ext_ack* %324)
  store i32 %325, i32* %37, align 4
  %326 = load i32, i32* %37, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %319
  %329 = load i32, i32* %37, align 4
  store i32 %329, i32* %35, align 4
  store i32 1, i32* %28, align 4
  br label %402

330:                                              ; preds = %319
  %331 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %332 = load %struct.tc_action*, %struct.tc_action** %331, align 8
  %333 = call %struct.tcf_tunnel_key* @to_tunnel_key(%struct.tc_action* %332)
  store %struct.tcf_tunnel_key* %333, %struct.tcf_tunnel_key** %27, align 8
  %334 = load i32, i32* @GFP_KERNEL, align 4
  %335 = call %struct.tcf_tunnel_key_params* @kzalloc(i32 16, i32 %334)
  store %struct.tcf_tunnel_key_params* %335, %struct.tcf_tunnel_key_params** %23, align 8
  %336 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %23, align 8
  %337 = icmp ne %struct.tcf_tunnel_key_params* %336, null
  %338 = xor i1 %337, true
  %339 = zext i1 %338 to i32
  %340 = call i64 @unlikely(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %330
  %343 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %344 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %343, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %345 = load i32, i32* @ENOMEM, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %35, align 4
  store i32 1, i32* %28, align 4
  br label %395

347:                                              ; preds = %330
  %348 = load %struct.tc_tunnel_key*, %struct.tc_tunnel_key** %26, align 8
  %349 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %23, align 8
  %352 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %351, i32 0, i32 0
  store i32 %350, i32* %352, align 8
  %353 = load %struct.metadata_dst*, %struct.metadata_dst** %24, align 8
  %354 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %23, align 8
  %355 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %354, i32 0, i32 1
  store %struct.metadata_dst* %353, %struct.metadata_dst** %355, align 8
  %356 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %27, align 8
  %357 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %356, i32 0, i32 0
  %358 = call i32 @spin_lock_bh(i32* %357)
  %359 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %360 = load %struct.tc_action*, %struct.tc_action** %359, align 8
  %361 = load %struct.tc_tunnel_key*, %struct.tc_tunnel_key** %26, align 8
  %362 = getelementptr inbounds %struct.tc_tunnel_key, %struct.tc_tunnel_key* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %365 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %360, i32 %363, %struct.tcf_chain* %364)
  store %struct.tcf_chain* %365, %struct.tcf_chain** %25, align 8
  %366 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %27, align 8
  %367 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %23, align 8
  %370 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %27, align 8
  %371 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %370, i32 0, i32 0
  %372 = call i32 @lockdep_is_held(i32* %371)
  %373 = call i32 @rcu_swap_protected(i32 %368, %struct.tcf_tunnel_key_params* %369, i32 %372)
  %374 = load %struct.tcf_tunnel_key*, %struct.tcf_tunnel_key** %27, align 8
  %375 = getelementptr inbounds %struct.tcf_tunnel_key, %struct.tcf_tunnel_key* %374, i32 0, i32 0
  %376 = call i32 @spin_unlock_bh(i32* %375)
  %377 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %23, align 8
  %378 = call i32 @tunnel_key_release_params(%struct.tcf_tunnel_key_params* %377)
  %379 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %380 = icmp ne %struct.tcf_chain* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %347
  %382 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %383 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %382)
  br label %384

384:                                              ; preds = %381, %347
  %385 = load i32, i32* %35, align 4
  %386 = load i32, i32* @ACT_P_CREATED, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %393

388:                                              ; preds = %384
  %389 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %390 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %391 = load %struct.tc_action*, %struct.tc_action** %390, align 8
  %392 = call i32 @tcf_idr_insert(%struct.tc_action_net* %389, %struct.tc_action* %391)
  br label %393

393:                                              ; preds = %388, %384
  %394 = load i32, i32* %35, align 4
  store i32 %394, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

395:                                              ; preds = %342
  %396 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %397 = icmp ne %struct.tcf_chain* %396, null
  br i1 %397, label %398, label %401

398:                                              ; preds = %395
  %399 = load %struct.tcf_chain*, %struct.tcf_chain** %25, align 8
  %400 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %399)
  br label %401

401:                                              ; preds = %398, %395
  br label %402

402:                                              ; preds = %401, %328, %313, %305, %278
  %403 = load %struct.metadata_dst*, %struct.metadata_dst** %24, align 8
  %404 = icmp ne %struct.metadata_dst* %403, null
  br i1 %404, label %405, label %409

405:                                              ; preds = %402
  %406 = load %struct.metadata_dst*, %struct.metadata_dst** %24, align 8
  %407 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %406, i32 0, i32 0
  %408 = call i32 @dst_release(i32* %407)
  br label %409

409:                                              ; preds = %405, %402
  br label %410

410:                                              ; preds = %409, %288, %258, %249, %167
  %411 = load i32, i32* %28, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %415 = load %struct.tc_action*, %struct.tc_action** %414, align 8
  %416 = load i32, i32* %16, align 4
  %417 = call i32 @tcf_idr_release(%struct.tc_action* %415, i32 %416)
  br label %422

418:                                              ; preds = %410
  %419 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %420 = load i32, i32* %36, align 4
  %421 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %419, i32 %420)
  br label %422

422:                                              ; preds = %418, %413
  %423 = load i32, i32* %35, align 4
  store i32 %423, i32* %10, align 4
  store i32 1, i32* %38, align 4
  br label %424

424:                                              ; preds = %422, %393, %106, %97, %78, %69, %56
  %425 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %425)
  %426 = load i32, i32* %10, align 4
  ret i32 %426
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tc_tunnel_key* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @key32_to_tunnel_id(i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @tunnel_key_get_opts_len(%struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local %struct.metadata_dst* @__ip_tun_set_dst(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nla_get_in6_addr(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.metadata_dst* @__ipv6_tun_set_dst(%struct.in6_addr*, %struct.in6_addr*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tunnel_key_opts_set(%struct.nlattr*, %struct.TYPE_4__*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_tunnel_key* @to_tunnel_key(%struct.tc_action*) #1

declare dso_local %struct.tcf_tunnel_key_params* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.tcf_tunnel_key_params*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tunnel_key_release_params(%struct.tcf_tunnel_key_params*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_idr_insert(%struct.tc_action_net*, %struct.tc_action*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

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
