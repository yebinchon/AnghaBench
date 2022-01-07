; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_to_nh_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_to_nh_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nh_config = type { i32, i32, i64, i32, i8*, %struct.nlattr*, %struct.TYPE_7__, %struct.TYPE_8__*, i8*, %struct.nlattr*, i8*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_6__ = type { %struct.net*, %struct.nlmsghdr*, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nhmsg = type { i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32 }

@NHA_MAX = common dso_local global i32 0, align 4
@rtm_nh_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid values in ancillary header\00", align 1
@NEXTHOP_VALID_USER_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid nexthop flags in ancillary header\00", align 1
@NHA_GROUP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid address family\00", align 1
@NHA_GROUPS = common dso_local global i64 0, align 8
@NHA_MASTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid attributes in request\00", align 1
@NHA_ID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid family for group\00", align 1
@NEXTHOP_GRP_TYPE_MPATH = common dso_local global i64 0, align 8
@NHA_GROUP_TYPE = common dso_local global i64 0, align 8
@NEXTHOP_GRP_TYPE_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid group type\00", align 1
@NHA_BLACKHOLE = common dso_local global i64 0, align 8
@NHA_GATEWAY = common dso_local global i64 0, align 8
@NHA_OIF = common dso_local global i64 0, align 8
@NHA_ENCAP = common dso_local global i64 0, align 8
@NHA_ENCAP_TYPE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"Blackhole attribute can not be used with gateway or oif\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Device attribute required for non-blackhole nexthops\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Invalid device index\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Nexthop device is not up\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Carrier for nexthop device is down\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Invalid gateway\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Unknown address family for gateway\00", align 1
@RTNH_F_ONLINK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [57 x i8] c"ONLINK flag can not be set for nexthop without a gateway\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"LWT encapsulation type is missing\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"LWT encapsulation attribute is missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nh_config*, %struct.netlink_ext_ack*)* @rtm_to_nh_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtm_to_nh_config(%struct.net* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nh_config* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.nh_config*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.nhmsg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca %struct.nlattr*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %9, align 8
  store %struct.nh_config* %3, %struct.nh_config** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %20 = call %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.nhmsg* %20, %struct.nhmsg** %12, align 8
  %21 = load i32, i32* @NHA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %27 = load i32, i32* @NHA_MAX, align 4
  %28 = load i32, i32* @rtm_nh_policy, align 4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %30 = call i32 @nlmsg_parse(%struct.nlmsghdr* %26, i32 32, %struct.nlattr** %25, i32 %27, i32 %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %382

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %15, align 4
  %38 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %39 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %44 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %35
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %49 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %380

50:                                               ; preds = %42
  %51 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %52 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NEXTHOP_VALID_USER_FLAGS, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %60 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %380

61:                                               ; preds = %50
  %62 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %63 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %73 [
    i32 130, label %65
    i32 129, label %65
    i32 128, label %66
  ]

65:                                               ; preds = %61, %61
  br label %76

66:                                               ; preds = %61
  %67 = load i64, i64* @NHA_GROUP, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %76

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %61, %72
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %75 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %380

76:                                               ; preds = %71, %65
  %77 = load i64, i64* @NHA_GROUPS, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @NHA_MASTER, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %76
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %88 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %380

89:                                               ; preds = %81
  %90 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %91 = call i32 @memset(%struct.nh_config* %90, i32 0, i32 120)
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %93 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %96 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %95, i32 0, i32 13
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call i32 @NETLINK_CB(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %103 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %102, i32 0, i32 12
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %106 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %107 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %106, i32 0, i32 12
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store %struct.nlmsghdr* %105, %struct.nlmsghdr** %108, align 8
  %109 = load %struct.net*, %struct.net** %7, align 8
  %110 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %111 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %110, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store %struct.net* %109, %struct.net** %112, align 8
  %113 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %114 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %117 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %119 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %122 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 8
  %123 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %124 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %127 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* @NHA_ID, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = icmp ne %struct.nlattr* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %89
  %133 = load i64, i64* @NHA_ID, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = call i8* @nla_get_u32(%struct.nlattr* %135)
  %137 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %138 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %137, i32 0, i32 10
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %132, %89
  %140 = load i64, i64* @NHA_GROUP, align 8
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = icmp ne %struct.nlattr* %142, null
  br i1 %143, label %144, label %186

144:                                              ; preds = %139
  %145 = load %struct.nhmsg*, %struct.nhmsg** %12, align 8
  %146 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 128
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %151 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %380

152:                                              ; preds = %144
  %153 = load i64, i64* @NHA_GROUP, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %157 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %156, i32 0, i32 9
  store %struct.nlattr* %155, %struct.nlattr** %157, align 8
  %158 = load i64, i64* @NEXTHOP_GRP_TYPE_MPATH, align 8
  %159 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %160 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* @NHA_GROUP_TYPE, align 8
  %162 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %161
  %163 = load %struct.nlattr*, %struct.nlattr** %162, align 8
  %164 = icmp ne %struct.nlattr* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %152
  %166 = load i64, i64* @NHA_GROUP_TYPE, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i8* @nla_get_u16(%struct.nlattr* %168)
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %172 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %165, %152
  %174 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %175 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NEXTHOP_GRP_TYPE_MAX, align 8
  %178 = icmp sgt i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %181 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %380

182:                                              ; preds = %173
  %183 = load %struct.net*, %struct.net** %7, align 8
  %184 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %185 = call i32 @nh_check_attr_group(%struct.net* %183, %struct.nlattr** %25, %struct.netlink_ext_ack* %184)
  store i32 %185, i32* %15, align 4
  br label %380

186:                                              ; preds = %139
  %187 = load i64, i64* @NHA_BLACKHOLE, align 8
  %188 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %187
  %189 = load %struct.nlattr*, %struct.nlattr** %188, align 8
  %190 = icmp ne %struct.nlattr* %189, null
  br i1 %190, label %191, label %217

191:                                              ; preds = %186
  %192 = load i64, i64* @NHA_GATEWAY, align 8
  %193 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %192
  %194 = load %struct.nlattr*, %struct.nlattr** %193, align 8
  %195 = icmp ne %struct.nlattr* %194, null
  br i1 %195, label %211, label %196

196:                                              ; preds = %191
  %197 = load i64, i64* @NHA_OIF, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = icmp ne %struct.nlattr* %199, null
  br i1 %200, label %211, label %201

201:                                              ; preds = %196
  %202 = load i64, i64* @NHA_ENCAP, align 8
  %203 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %202
  %204 = load %struct.nlattr*, %struct.nlattr** %203, align 8
  %205 = icmp ne %struct.nlattr* %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load i64, i64* @NHA_ENCAP_TYPE, align 8
  %208 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %207
  %209 = load %struct.nlattr*, %struct.nlattr** %208, align 8
  %210 = icmp ne %struct.nlattr* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %206, %201, %196, %191
  %212 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %213 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %212, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %380

214:                                              ; preds = %206
  %215 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %216 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %215, i32 0, i32 3
  store i32 1, i32* %216, align 8
  store i32 0, i32* %15, align 4
  br label %380

217:                                              ; preds = %186
  %218 = load i64, i64* @NHA_OIF, align 8
  %219 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %218
  %220 = load %struct.nlattr*, %struct.nlattr** %219, align 8
  %221 = icmp ne %struct.nlattr* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %224 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %223, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %380

225:                                              ; preds = %217
  %226 = load i64, i64* @NHA_OIF, align 8
  %227 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %226
  %228 = load %struct.nlattr*, %struct.nlattr** %227, align 8
  %229 = call i8* @nla_get_u32(%struct.nlattr* %228)
  %230 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %231 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %230, i32 0, i32 8
  store i8* %229, i8** %231, align 8
  %232 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %233 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %232, i32 0, i32 8
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %244

236:                                              ; preds = %225
  %237 = load %struct.net*, %struct.net** %7, align 8
  %238 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %239 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %238, i32 0, i32 8
  %240 = load i8*, i8** %239, align 8
  %241 = call %struct.TYPE_8__* @__dev_get_by_index(%struct.net* %237, i8* %240)
  %242 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %243 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %242, i32 0, i32 7
  store %struct.TYPE_8__* %241, %struct.TYPE_8__** %243, align 8
  br label %244

244:                                              ; preds = %236, %225
  %245 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %246 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %245, i32 0, i32 7
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = icmp ne %struct.TYPE_8__* %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %244
  %250 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %251 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %380

252:                                              ; preds = %244
  %253 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %254 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %253, i32 0, i32 7
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @IFF_UP, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %266, label %261

261:                                              ; preds = %252
  %262 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %263 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %264 = load i32, i32* @ENETDOWN, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %15, align 4
  br label %380

266:                                              ; preds = %252
  %267 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %268 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %267, i32 0, i32 7
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = call i32 @netif_carrier_ok(%struct.TYPE_8__* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %266
  %273 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %274 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %273, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %275 = load i32, i32* @ENETDOWN, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %15, align 4
  br label %380

277:                                              ; preds = %266
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %15, align 4
  %282 = load i64, i64* @NHA_GATEWAY, align 8
  %283 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %282
  %284 = load %struct.nlattr*, %struct.nlattr** %283, align 8
  %285 = icmp ne %struct.nlattr* %284, null
  br i1 %285, label %286, label %325

286:                                              ; preds = %279
  %287 = load i64, i64* @NHA_GATEWAY, align 8
  %288 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %287
  %289 = load %struct.nlattr*, %struct.nlattr** %288, align 8
  store %struct.nlattr* %289, %struct.nlattr** %18, align 8
  %290 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %291 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  switch i32 %292, label %321 [
    i32 130, label %293
    i32 129, label %307
  ]

293:                                              ; preds = %286
  %294 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %295 = call i32 @nla_len(%struct.nlattr* %294)
  %296 = sext i32 %295 to i64
  %297 = icmp ne i64 %296, 4
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %300 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %299, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %380

301:                                              ; preds = %293
  %302 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %303 = call i32 @nla_get_be32(%struct.nlattr* %302)
  %304 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %305 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %304, i32 0, i32 6
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 1
  store i32 %303, i32* %306, align 4
  br label %324

307:                                              ; preds = %286
  %308 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %309 = call i32 @nla_len(%struct.nlattr* %308)
  %310 = sext i32 %309 to i64
  %311 = icmp ne i64 %310, 4
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %314 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %313, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %380

315:                                              ; preds = %307
  %316 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %317 = call i32 @nla_get_in6_addr(%struct.nlattr* %316)
  %318 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %319 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %318, i32 0, i32 6
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  store i32 %317, i32* %320, align 8
  br label %324

321:                                              ; preds = %286
  %322 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %323 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %322, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %380

324:                                              ; preds = %315, %301
  br label %336

325:                                              ; preds = %279
  %326 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %327 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @RTNH_F_ONLINK, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %334 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %333, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  br label %380

335:                                              ; preds = %325
  br label %336

336:                                              ; preds = %335, %324
  %337 = load i64, i64* @NHA_ENCAP, align 8
  %338 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %337
  %339 = load %struct.nlattr*, %struct.nlattr** %338, align 8
  %340 = icmp ne %struct.nlattr* %339, null
  br i1 %340, label %341, label %370

341:                                              ; preds = %336
  %342 = load i64, i64* @NHA_ENCAP, align 8
  %343 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %342
  %344 = load %struct.nlattr*, %struct.nlattr** %343, align 8
  %345 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %346 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %345, i32 0, i32 5
  store %struct.nlattr* %344, %struct.nlattr** %346, align 8
  %347 = load i64, i64* @NHA_ENCAP_TYPE, align 8
  %348 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %347
  %349 = load %struct.nlattr*, %struct.nlattr** %348, align 8
  %350 = icmp ne %struct.nlattr* %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %341
  %352 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %353 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %352, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %380

354:                                              ; preds = %341
  %355 = load i64, i64* @NHA_ENCAP_TYPE, align 8
  %356 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %355
  %357 = load %struct.nlattr*, %struct.nlattr** %356, align 8
  %358 = call i8* @nla_get_u16(%struct.nlattr* %357)
  %359 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %360 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %359, i32 0, i32 4
  store i8* %358, i8** %360, align 8
  %361 = load %struct.nh_config*, %struct.nh_config** %10, align 8
  %362 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %361, i32 0, i32 4
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %365 = call i32 @lwtunnel_valid_encap_type(i8* %363, %struct.netlink_ext_ack* %364)
  store i32 %365, i32* %15, align 4
  %366 = load i32, i32* %15, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %354
  br label %380

369:                                              ; preds = %354
  br label %379

370:                                              ; preds = %336
  %371 = load i64, i64* @NHA_ENCAP_TYPE, align 8
  %372 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %371
  %373 = load %struct.nlattr*, %struct.nlattr** %372, align 8
  %374 = icmp ne %struct.nlattr* %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %370
  %376 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %377 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %376, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %380

378:                                              ; preds = %370
  br label %379

379:                                              ; preds = %378, %369
  store i32 0, i32* %15, align 4
  br label %380

380:                                              ; preds = %379, %375, %368, %351, %332, %321, %312, %298, %272, %261, %249, %222, %214, %211, %182, %179, %149, %86, %73, %58, %47
  %381 = load i32, i32* %15, align 4
  store i32 %381, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %382

382:                                              ; preds = %380, %33
  %383 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %383)
  %384 = load i32, i32* %6, align 4
  ret i32 %384
}

declare dso_local %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @memset(%struct.nh_config*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @nh_check_attr_group(%struct.net*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.TYPE_8__* @__dev_get_by_index(%struct.net*, i8*) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_8__*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_in6_addr(%struct.nlattr*) #1

declare dso_local i32 @lwtunnel_valid_encap_type(i8*, %struct.netlink_ext_ack*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
