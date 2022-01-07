; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_rtm_to_ifaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_rtm_to_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i32, i8*, i32, i8*, i8*, i8*, %struct.in_device*, i32, i8*, i32, i32 }
%struct.in_device = type { i32 }
%struct.net = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifaddrmsg = type { i32, i8*, i32, i32 }
%struct.net_device = type { i32 }
%struct.ifa_cacheinfo = type { i64, i64 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv4_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_FLAGS = common dso_local global i64 0, align 8
@IFA_BROADCAST = common dso_local global i64 0, align 8
@IFA_LABEL = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@IFA_RT_PRIORITY = common dso_local global i64 0, align 8
@IFA_CACHEINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in_ifaddr* (%struct.net*, %struct.nlmsghdr*, i64*, i64*, %struct.netlink_ext_ack*)* @rtm_to_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in_ifaddr* @rtm_to_ifaddr(%struct.net* %0, %struct.nlmsghdr* %1, i64* %2, i64* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.in_ifaddr*, align 8
  %15 = alloca %struct.ifaddrmsg*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.in_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ifa_cacheinfo*, align 8
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %21 = load i32, i32* @IFA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %27 = load i32, i32* @IFA_MAX, align 4
  %28 = load i32, i32* @ifa_ipv4_policy, align 4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %30 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %26, i32 24, %struct.nlattr** %25, i32 %27, i32 %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %229

34:                                               ; preds = %5
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %36 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.ifaddrmsg* %36, %struct.ifaddrmsg** %15, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %18, align 4
  %39 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %40 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* @IFA_LOCAL, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %34
  br label %229

49:                                               ; preds = %43
  %50 = load %struct.net*, %struct.net** %7, align 8
  %51 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %52 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.net_device* @__dev_get_by_index(%struct.net* %50, i32 %53)
  store %struct.net_device* %54, %struct.net_device** %16, align 8
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %18, align 4
  %57 = load %struct.net_device*, %struct.net_device** %16, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %229

60:                                               ; preds = %49
  %61 = load %struct.net_device*, %struct.net_device** %16, align 8
  %62 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %61)
  store %struct.in_device* %62, %struct.in_device** %17, align 8
  %63 = load i32, i32* @ENOBUFS, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %18, align 4
  %65 = load %struct.in_device*, %struct.in_device** %17, align 8
  %66 = icmp ne %struct.in_device* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %229

68:                                               ; preds = %60
  %69 = call %struct.in_ifaddr* (...) @inet_alloc_ifa()
  store %struct.in_ifaddr* %69, %struct.in_ifaddr** %14, align 8
  %70 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %71 = icmp ne %struct.in_ifaddr* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %229

73:                                               ; preds = %68
  %74 = load %struct.in_device*, %struct.in_device** %17, align 8
  %75 = call i32 @ipv4_devconf_setall(%struct.in_device* %74)
  %76 = load %struct.in_device*, %struct.in_device** %17, align 8
  %77 = getelementptr inbounds %struct.in_device, %struct.in_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @neigh_parms_data_state_setall(i32 %78)
  %80 = load %struct.in_device*, %struct.in_device** %17, align 8
  %81 = call i32 @in_dev_hold(%struct.in_device* %80)
  %82 = load i64, i64* @IFA_ADDRESS, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %73
  %87 = load i64, i64* @IFA_LOCAL, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = load i64, i64* @IFA_ADDRESS, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %90
  store %struct.nlattr* %89, %struct.nlattr** %91, align 8
  br label %92

92:                                               ; preds = %86, %73
  %93 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %94 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %93, i32 0, i32 10
  %95 = call i32 @INIT_HLIST_NODE(i32* %94)
  %96 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %97 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %100 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %102 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @inet_make_mask(i32 %103)
  %105 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %106 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* @IFA_FLAGS, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %92
  %112 = load i64, i64* @IFA_FLAGS, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i8* @nla_get_u32(%struct.nlattr* %114)
  br label %120

116:                                              ; preds = %92
  %117 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %118 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  br label %120

120:                                              ; preds = %116, %111
  %121 = phi i8* [ %115, %111 ], [ %119, %116 ]
  %122 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %123 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %122, i32 0, i32 8
  store i8* %121, i8** %123, align 8
  %124 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %15, align 8
  %125 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %128 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  %129 = load %struct.in_device*, %struct.in_device** %17, align 8
  %130 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %131 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %130, i32 0, i32 6
  store %struct.in_device* %129, %struct.in_device** %131, align 8
  %132 = load i64, i64* @IFA_LOCAL, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = call i8* @nla_get_in_addr(%struct.nlattr* %134)
  %136 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %137 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %136, i32 0, i32 5
  store i8* %135, i8** %137, align 8
  %138 = load i64, i64* @IFA_ADDRESS, align 8
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = call i8* @nla_get_in_addr(%struct.nlattr* %140)
  %142 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %143 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load i64, i64* @IFA_BROADCAST, align 8
  %145 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %144
  %146 = load %struct.nlattr*, %struct.nlattr** %145, align 8
  %147 = icmp ne %struct.nlattr* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %120
  %149 = load i64, i64* @IFA_BROADCAST, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = call i8* @nla_get_in_addr(%struct.nlattr* %151)
  %153 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %154 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %148, %120
  %156 = load i64, i64* @IFA_LABEL, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = icmp ne %struct.nlattr* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %162 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* @IFA_LABEL, align 8
  %165 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %164
  %166 = load %struct.nlattr*, %struct.nlattr** %165, align 8
  %167 = load i32, i32* @IFNAMSIZ, align 4
  %168 = call i32 @nla_strlcpy(i32 %163, %struct.nlattr* %166, i32 %167)
  br label %178

169:                                              ; preds = %155
  %170 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %171 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.net_device*, %struct.net_device** %16, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IFNAMSIZ, align 4
  %177 = call i32 @memcpy(i32 %172, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %169, %160
  %179 = load i64, i64* @IFA_RT_PRIORITY, align 8
  %180 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %179
  %181 = load %struct.nlattr*, %struct.nlattr** %180, align 8
  %182 = icmp ne %struct.nlattr* %181, null
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load i64, i64* @IFA_RT_PRIORITY, align 8
  %185 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %184
  %186 = load %struct.nlattr*, %struct.nlattr** %185, align 8
  %187 = call i8* @nla_get_u32(%struct.nlattr* %186)
  %188 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %189 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %183, %178
  %191 = load i64, i64* @IFA_CACHEINFO, align 8
  %192 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %191
  %193 = load %struct.nlattr*, %struct.nlattr** %192, align 8
  %194 = icmp ne %struct.nlattr* %193, null
  br i1 %194, label %195, label %224

195:                                              ; preds = %190
  %196 = load i64, i64* @IFA_CACHEINFO, align 8
  %197 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %196
  %198 = load %struct.nlattr*, %struct.nlattr** %197, align 8
  %199 = call %struct.ifa_cacheinfo* @nla_data(%struct.nlattr* %198)
  store %struct.ifa_cacheinfo* %199, %struct.ifa_cacheinfo** %19, align 8
  %200 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %201 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %195
  %205 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %206 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %209 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %207, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %204, %195
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %18, align 4
  br label %226

215:                                              ; preds = %204
  %216 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %217 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** %9, align 8
  store i64 %218, i64* %219, align 8
  %220 = load %struct.ifa_cacheinfo*, %struct.ifa_cacheinfo** %19, align 8
  %221 = getelementptr inbounds %struct.ifa_cacheinfo, %struct.ifa_cacheinfo* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %10, align 8
  store i64 %222, i64* %223, align 8
  br label %224

224:                                              ; preds = %215, %190
  %225 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  store %struct.in_ifaddr* %225, %struct.in_ifaddr** %6, align 8
  store i32 1, i32* %20, align 4
  br label %232

226:                                              ; preds = %212
  %227 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  %228 = call i32 @inet_free_ifa(%struct.in_ifaddr* %227)
  br label %229

229:                                              ; preds = %226, %72, %67, %59, %48, %33
  %230 = load i32, i32* %18, align 4
  %231 = call %struct.in_ifaddr* @ERR_PTR(i32 %230)
  store %struct.in_ifaddr* %231, %struct.in_ifaddr** %6, align 8
  store i32 1, i32* %20, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  ret %struct.in_ifaddr* %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #2

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #2

declare dso_local %struct.in_ifaddr* @inet_alloc_ifa(...) #2

declare dso_local i32 @ipv4_devconf_setall(%struct.in_device*) #2

declare dso_local i32 @neigh_parms_data_state_setall(i32) #2

declare dso_local i32 @in_dev_hold(%struct.in_device*) #2

declare dso_local i32 @INIT_HLIST_NODE(i32*) #2

declare dso_local i32 @inet_make_mask(i32) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #2

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local %struct.ifa_cacheinfo* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @inet_free_ifa(%struct.in_ifaddr*) #2

declare dso_local %struct.in_ifaddr* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
