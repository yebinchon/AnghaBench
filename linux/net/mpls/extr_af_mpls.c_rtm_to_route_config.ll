; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_rtm_to_route_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_rtm_to_route_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.mpls_route_config = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.nlmsghdr*, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rtmsg = type { i64, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@rtm_mpls_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_MPLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid address family in rtmsg\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rtm_dst_len must be 20 for MPLS\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"rtm_src_len must be 0 for MPLS\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"rtm_tos must be 0 for MPLS\00", align 1
@RT_TABLE_MAIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"MPLS only supports the main route table\00", align 1
@RT_SCOPE_UNIVERSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Invalid route scope  - MPLS only supports UNIVERSE\00", align 1
@RTN_UNICAST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"Invalid route type - MPLS only supports UNICAST\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"rtm_flags must be 0 for MPLS\00", align 1
@LABEL_NOT_SPECIFIED = common dso_local global i32 0, align 4
@MPLS_NEIGH_TABLE_UNSPEC = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_DEFAULT = common dso_local global i32 0, align 4
@MAX_NEW_LABELS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"MPLS does not support RTA_GATEWAY attribute\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"RTA_TTL_PROPAGATE can only be 0 or 1\00", align 1
@MPLS_TTL_PROP_ENABLED = common dso_local global i32 0, align 4
@MPLS_TTL_PROP_DISABLED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Unknown attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.mpls_route_config*, %struct.netlink_ext_ack*)* @rtm_to_route_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtm_to_route_config(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.mpls_route_config* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.mpls_route_config*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.rtmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.mpls_route_config* %2, %struct.mpls_route_config** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %18 = load i32, i32* @RTA_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = load i32, i32* @RTA_MAX, align 4
  %25 = load i32, i32* @rtm_mpls_policy, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %27 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %23, i32 72, %struct.nlattr** %22, i32 %24, i32 %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %249

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %35 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %34)
  store %struct.rtmsg* %35, %struct.rtmsg** %9, align 8
  %36 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %37 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_MPLS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %43 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %249

44:                                               ; preds = %31
  %45 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %46 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 20
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %51 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %249

52:                                               ; preds = %44
  %53 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %54 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %249

60:                                               ; preds = %52
  %61 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %62 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %67 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %249

68:                                               ; preds = %60
  %69 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %70 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RT_TABLE_MAIN, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %76 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %249

77:                                               ; preds = %68
  %78 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %79 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RT_SCOPE_UNIVERSE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %85 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %249

86:                                               ; preds = %77
  %87 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %88 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RTN_UNICAST, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %94 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %249

95:                                               ; preds = %86
  %96 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %97 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %102 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %249

103:                                              ; preds = %95
  %104 = load i32, i32* @LABEL_NOT_SPECIFIED, align 4
  %105 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %106 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %108 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %111 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %110, i32 0, i32 12
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @MPLS_NEIGH_TABLE_UNSPEC, align 4
  %113 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %114 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @MPLS_TTL_PROP_DEFAULT, align 4
  %116 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %117 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %119 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %122 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i32 @NETLINK_CB(%struct.sk_buff* %123)
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %129 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %132 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %133 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store %struct.nlmsghdr* %131, %struct.nlmsghdr** %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @sock_net(i32 %137)
  %139 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %140 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %245, %103
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @RTA_MAX, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %248

146:                                              ; preds = %142
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  store %struct.nlattr* %150, %struct.nlattr** %15, align 8
  %151 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %152 = icmp ne %struct.nlattr* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  br label %245

154:                                              ; preds = %146
  %155 = load i32, i32* %12, align 4
  switch i32 %155, label %240 [
    i32 130, label %156
    i32 131, label %161
    i32 134, label %174
    i32 133, label %194
    i32 128, label %197
    i32 132, label %211
    i32 129, label %220
  ]

156:                                              ; preds = %154
  %157 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %158 = call i32 @nla_get_u32(%struct.nlattr* %157)
  %159 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %160 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %159, i32 0, i32 10
  store i32 %158, i32* %160, align 8
  br label %244

161:                                              ; preds = %154
  %162 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %163 = load i32, i32* @MAX_NEW_LABELS, align 4
  %164 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %165 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %164, i32 0, i32 0
  %166 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %167 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %166, i32 0, i32 9
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %170 = call i32 @nla_get_labels(%struct.nlattr* %162, i32 %163, i32* %165, i32* %168, %struct.netlink_ext_ack* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %249

173:                                              ; preds = %161
  br label %244

174:                                              ; preds = %154
  %175 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %176 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %177 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %176, i32 0, i32 7
  %178 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %179 = call i32 @nla_get_labels(%struct.nlattr* %175, i32 1, i32* %16, i32* %177, %struct.netlink_ext_ack* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %249

182:                                              ; preds = %174
  %183 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %184 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %188 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %187, i32 0, i32 7
  %189 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %190 = call i32 @mpls_label_ok(i32 %186, i32* %188, %struct.netlink_ext_ack* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %182
  br label %249

193:                                              ; preds = %182
  br label %244

194:                                              ; preds = %154
  %195 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %196 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %195, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %249

197:                                              ; preds = %154
  %198 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %199 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %200 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %199, i32 0, i32 6
  %201 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %202 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %201, i32 0, i32 5
  %203 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %204 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %207 = call i32 @nla_get_via(%struct.nlattr* %198, i32* %200, i32* %202, i32 %205, %struct.netlink_ext_ack* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  br label %249

210:                                              ; preds = %197
  br label %244

211:                                              ; preds = %154
  %212 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %213 = call i32 @nla_data(%struct.nlattr* %212)
  %214 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %215 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %217 = call i32 @nla_len(%struct.nlattr* %216)
  %218 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %219 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  br label %244

220:                                              ; preds = %154
  %221 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %222 = call i32 @nla_get_u8(%struct.nlattr* %221)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %227 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %228 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %226, %struct.nlattr* %227, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %249

229:                                              ; preds = %220
  %230 = load i32, i32* %17, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* @MPLS_TTL_PROP_ENABLED, align 4
  br label %236

234:                                              ; preds = %229
  %235 = load i32, i32* @MPLS_TTL_PROP_DISABLED, align 4
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %238 = load %struct.mpls_route_config*, %struct.mpls_route_config** %7, align 8
  %239 = getelementptr inbounds %struct.mpls_route_config, %struct.mpls_route_config* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  br label %244

240:                                              ; preds = %154
  %241 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %242 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %243 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %241, %struct.nlattr* %242, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %249

244:                                              ; preds = %236, %211, %210, %193, %173, %156
  br label %245

245:                                              ; preds = %244, %153
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %12, align 4
  br label %142

248:                                              ; preds = %142
  store i32 0, i32* %13, align 4
  br label %249

249:                                              ; preds = %248, %240, %225, %209, %194, %192, %181, %172, %100, %92, %83, %74, %65, %57, %49, %41, %30
  %250 = load i32, i32* %13, align 4
  %251 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %251)
  ret i32 %250
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nla_get_labels(%struct.nlattr*, i32, i32*, i32*, %struct.netlink_ext_ack*) #2

declare dso_local i32 @mpls_label_ok(i32, i32*, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_via(%struct.nlattr*, i32*, i32*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
