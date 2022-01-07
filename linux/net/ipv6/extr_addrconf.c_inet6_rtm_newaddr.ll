; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_newaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_newaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_ifaddr = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.ifa6_config = type { i32, i32, i8*, i8*, i8*, i32, %struct.in6_addr* }
%struct.ifa_cacheinfo = type { i8*, i8* }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFA_RT_PRIORITY = common dso_local global i64 0, align 8
@INFINITY_LIFE_TIME = common dso_local global i8* null, align 8
@IFA_CACHEINFO = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IFA_FLAGS = common dso_local global i64 0, align 8
@IFA_F_NODAD = common dso_local global i32 0, align 4
@IFA_F_HOMEADDRESS = common dso_local global i32 0, align 4
@IFA_F_MANAGETEMPADDR = common dso_local global i32 0, align 4
@IFA_F_NOPREFIXROUTE = common dso_local global i32 0, align 4
@IFA_F_MCAUTOJOIN = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"IFA_F_NODAD and IFA_F_OPTIMISTIC are mutually exclusive\00", align 1
@NLM_F_EXCL = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet6_rtm_newaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_newaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.inet6_ifaddr*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.inet6_dev*, align 8
  %16 = alloca %struct.ifa6_config, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ifa_cacheinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @IFA_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = load i32, i32* @IFA_MAX, align 4
  %31 = load i32, i32* @ifa_ipv6_policy, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %33 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %29, i32 12, %struct.nlattr** %28, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

38:                                               ; preds = %3
  %39 = call i32 @memset(%struct.ifa6_config* %16, i32 0, i32 48)
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %41 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %40)
  store %struct.ifaddrmsg* %41, %struct.ifaddrmsg** %9, align 8
  %42 = load i64, i64* @IFA_ADDRESS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = load i64, i64* @IFA_LOCAL, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @extract_addr(%struct.nlattr* %44, %struct.nlattr* %47, %struct.in6_addr** %12)
  %49 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

56:                                               ; preds = %38
  %57 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %58 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 6
  store %struct.in6_addr* %57, %struct.in6_addr** %58, align 8
  %59 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %60 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = load i64, i64* @IFA_RT_PRIORITY, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i64, i64* @IFA_RT_PRIORITY, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i8* @nla_get_u32(%struct.nlattr* %70)
  %72 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 4
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %56
  %74 = load i8*, i8** @INFINITY_LIFE_TIME, align 8
  %75 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** @INFINITY_LIFE_TIME, align 8
  %77 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = load i64, i64* @IFA_CACHEINFO, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %73
  %83 = load i64, i64* @IFA_CACHEINFO, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = call %struct.ifa_cacheinfo* @nla_data(%struct.nlattr* %85)
  store %struct.ifa_cacheinfo* %86, %struct.ifa_cacheinfo** %19, align 8
  %87 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %88 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %92 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 2
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %82, %73
  %96 = load %struct.net*, %struct.net** %8, align 8
  %97 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %98 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.net_device* @__dev_get_by_index(%struct.net* %96, i32 %99)
  store %struct.net_device* %100, %struct.net_device** %14, align 8
  %101 = load %struct.net_device*, %struct.net_device** %14, align 8
  %102 = icmp ne %struct.net_device* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

106:                                              ; preds = %95
  %107 = load i64, i64* @IFA_FLAGS, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i64, i64* @IFA_FLAGS, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i8* @nla_get_u32(%struct.nlattr* %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  br label %123

118:                                              ; preds = %106
  %119 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %120 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  br label %123

123:                                              ; preds = %118, %111
  %124 = load i32, i32* @IFA_F_NODAD, align 4
  %125 = load i32, i32* @IFA_F_HOMEADDRESS, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @IFA_F_MCAUTOJOIN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %134 = or i32 %132, %133
  %135 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %134
  store i32 %137, i32* %135, align 8
  %138 = load %struct.net_device*, %struct.net_device** %14, align 8
  %139 = call %struct.inet6_dev* @ipv6_find_idev(%struct.net_device* %138)
  store %struct.inet6_dev* %139, %struct.inet6_dev** %15, align 8
  %140 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %141 = call i64 @IS_ERR(%struct.inet6_dev* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %123
  %144 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %145 = call i32 @PTR_ERR(%struct.inet6_dev* %144)
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

146:                                              ; preds = %123
  %147 = load %struct.net*, %struct.net** %8, align 8
  %148 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %149 = call i32 @ipv6_allow_optimistic_dad(%struct.net* %147, %struct.inet6_dev* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %153 = xor i32 %152, -1
  %154 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %153
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %146
  %158 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @IFA_F_NODAD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %171 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %170, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

174:                                              ; preds = %163, %157
  %175 = load %struct.net*, %struct.net** %8, align 8
  %176 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %16, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.net_device*, %struct.net_device** %14, align 8
  %179 = call %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net* %175, i32 %177, %struct.net_device* %178, i32 1)
  store %struct.inet6_ifaddr* %179, %struct.inet6_ifaddr** %13, align 8
  %180 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %181 = icmp ne %struct.inet6_ifaddr* %180, null
  br i1 %181, label %189, label %182

182:                                              ; preds = %174
  %183 = load %struct.net*, %struct.net** %8, align 8
  %184 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %9, align 8
  %185 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %188 = call i32 @inet6_addr_add(%struct.net* %183, i32 %186, %struct.ifa6_config* %16, %struct.netlink_ext_ack* %187)
  store i32 %188, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

189:                                              ; preds = %174
  %190 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %191 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NLM_F_EXCL, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %189
  %197 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %198 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @NLM_F_REPLACE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %196, %189
  %204 = load i32, i32* @EEXIST, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %17, align 4
  br label %209

206:                                              ; preds = %196
  %207 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %208 = call i32 @inet6_addr_modify(%struct.inet6_ifaddr* %207, %struct.ifa6_config* %16)
  store i32 %208, i32* %17, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %211 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %210)
  %212 = load i32, i32* %17, align 4
  store i32 %212, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %213

213:                                              ; preds = %209, %182, %169, %143, %103, %53, %36
  %214 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @memset(%struct.ifa6_config*, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @extract_addr(%struct.nlattr*, %struct.nlattr*, %struct.in6_addr**) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.ifa_cacheinfo* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @ipv6_find_idev(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.inet6_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.inet6_dev*) #1

declare dso_local i32 @ipv6_allow_optimistic_dad(%struct.net*, %struct.inet6_dev*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @inet6_addr_add(%struct.net*, i32, %struct.ifa6_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @inet6_addr_modify(%struct.inet6_ifaddr*, %struct.ifa6_config*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
