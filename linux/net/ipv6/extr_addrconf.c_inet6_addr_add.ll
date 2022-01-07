; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_addr_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ifa6_config = type { i32, i64, i64, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.inet6_ifaddr = type { i32, i32, i32, i32 }
%struct.inet6_dev = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFA_F_MANAGETEMPADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFA_F_MCAUTOJOIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i64 0, align 8
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@IFA_F_NOPREFIXROUTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@IFA_F_NODAD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.ifa6_config*, %struct.netlink_ext_ack*)* @inet6_addr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_addr_add(%struct.net* %0, i32 %1, %struct.ifa6_config* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifa6_config*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.inet6_ifaddr*, align 8
  %11 = alloca %struct.inet6_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ifa6_config* %2, %struct.ifa6_config** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %19 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %239

25:                                               ; preds = %4
  %26 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %27 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %32 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %35 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %239

41:                                               ; preds = %30
  %42 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %43 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %50 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 64
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %239

56:                                               ; preds = %48, %41
  %57 = load %struct.net*, %struct.net** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.net_device* @__dev_get_by_index(%struct.net* %57, i32 %58)
  store %struct.net_device* %59, %struct.net_device** %12, align 8
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %239

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %12, align 8
  %67 = call %struct.inet6_ifaddr* @addrconf_add_dev(%struct.net_device* %66)
  %68 = bitcast %struct.inet6_ifaddr* %67 to %struct.inet6_dev*
  store %struct.inet6_dev* %68, %struct.inet6_dev** %11, align 8
  %69 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %70 = bitcast %struct.inet6_dev* %69 to %struct.inet6_ifaddr*
  %71 = call i64 @IS_ERR(%struct.inet6_ifaddr* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %75 = bitcast %struct.inet6_dev* %74 to %struct.inet6_ifaddr*
  %76 = call i32 @PTR_ERR(%struct.inet6_ifaddr* %75)
  store i32 %76, i32* %5, align 4
  br label %239

77:                                               ; preds = %65
  %78 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %79 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IFA_F_MCAUTOJOIN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load %struct.net*, %struct.net** %6, align 8
  %86 = getelementptr inbounds %struct.net, %struct.net* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %90 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ipv6_mc_config(i32 %88, i32 1, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %5, align 4
  br label %239

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %101 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ipv6_addr_scope(i32 %102)
  %104 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %105 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %107 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HZ, align 8
  %110 = call i64 @addrconf_timeout_fixup(i64 %108, i64 %109)
  store i64 %110, i64* %13, align 8
  %111 = load i64, i64* %13, align 8
  %112 = call i64 @addrconf_finite_timeout(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %99
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @HZ, align 8
  %117 = mul i64 %115, %116
  %118 = call i64 @jiffies_to_clock_t(i64 %117)
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %121 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* @RTF_EXPIRES, align 8
  store i64 %122, i64* %15, align 8
  br label %129

123:                                              ; preds = %99
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %124 = load i32, i32* @IFA_F_PERMANENT, align 4
  %125 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %126 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %114
  %130 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %131 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HZ, align 8
  %134 = call i64 @addrconf_timeout_fixup(i64 %132, i64 %133)
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @addrconf_finite_timeout(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %129
  %139 = load i64, i64* %13, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %143 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %144 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %138
  %148 = load i64, i64* %13, align 8
  %149 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %150 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %129
  %152 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %153 = bitcast %struct.inet6_dev* %152 to %struct.inet6_ifaddr*
  %154 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %155 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %156 = call %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_ifaddr* %153, %struct.ifa6_config* %154, i32 1, %struct.netlink_ext_ack* %155)
  store %struct.inet6_ifaddr* %156, %struct.inet6_ifaddr** %10, align 8
  %157 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %158 = call i64 @IS_ERR(%struct.inet6_ifaddr* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %218, label %160

160:                                              ; preds = %151
  %161 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %162 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @IFA_F_NOPREFIXROUTE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %160
  %168 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %169 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %168, i32 0, i32 3
  %170 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %171 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %174 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.net_device*, %struct.net_device** %12, align 8
  %177 = load i64, i64* %14, align 8
  %178 = load i64, i64* %15, align 8
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = call i32 @addrconf_prefix_route(i32* %169, i32 %172, i32 %175, %struct.net_device* %176, i64 %177, i64 %178, i32 %179)
  br label %181

181:                                              ; preds = %167, %160
  %182 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %183 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %186 = load i32, i32* @IFA_F_NODAD, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %192 = call i32 @ipv6_ifa_notify(i32 0, %struct.inet6_ifaddr* %191)
  br label %193

193:                                              ; preds = %190, %181
  %194 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %195 = call i32 @addrconf_dad_start(%struct.inet6_ifaddr* %194)
  %196 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %197 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IFA_F_MANAGETEMPADDR, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %193
  %203 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %204 = bitcast %struct.inet6_dev* %203 to %struct.inet6_ifaddr*
  %205 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %206 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %207 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %210 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @jiffies, align 4
  %213 = call i32 @manage_tempaddrs(%struct.inet6_ifaddr* %204, %struct.inet6_ifaddr* %205, i64 %208, i64 %211, i32 1, i32 %212)
  br label %214

214:                                              ; preds = %202, %193
  %215 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %216 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %215)
  %217 = call i32 (...) @addrconf_verify_rtnl()
  store i32 0, i32* %5, align 4
  br label %239

218:                                              ; preds = %151
  %219 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %220 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @IFA_F_MCAUTOJOIN, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %218
  %226 = load %struct.net*, %struct.net** %6, align 8
  %227 = getelementptr inbounds %struct.net, %struct.net* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ifa6_config*, %struct.ifa6_config** %8, align 8
  %231 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @ipv6_mc_config(i32 %229, i32 0, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %225, %218
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %10, align 8
  %238 = call i32 @PTR_ERR(%struct.inet6_ifaddr* %237)
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %236, %214, %96, %73, %62, %53, %38, %22
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_ifaddr* @addrconf_add_dev(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @PTR_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_mc_config(i32, i32, i32, i32) #1

declare dso_local i32 @ipv6_addr_scope(i32) #1

declare dso_local i64 @addrconf_timeout_fixup(i64, i64) #1

declare dso_local i64 @addrconf_finite_timeout(i64) #1

declare dso_local i64 @jiffies_to_clock_t(i64) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_ifaddr*, %struct.ifa6_config*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, %struct.net_device*, i64, i64, i32) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_dad_start(%struct.inet6_ifaddr*) #1

declare dso_local i32 @manage_tempaddrs(%struct.inet6_ifaddr*, %struct.inet6_ifaddr*, i64, i64, i32, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_verify_rtnl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
