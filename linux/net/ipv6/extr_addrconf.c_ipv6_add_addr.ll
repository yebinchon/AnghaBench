; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_add_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, i32, %struct.inet6_dev*, i32, i32, %struct.fib6_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fib6_info = type { i32 }
%struct.inet6_dev = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.ifa6_config = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.in6_validator_info = type { %struct.netlink_ext_ack*, %struct.inet6_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IFA_F_MCAUTOJOIN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@addrconf_dad_work = common dso_local global i32 0, align 4
@IFA_F_NODAD = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet6_ifaddr* (%struct.inet6_dev*, %struct.ifa6_config*, i32, %struct.netlink_ext_ack*)* @ipv6_add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev* %0, %struct.ifa6_config* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.inet6_ifaddr*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.ifa6_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.inet6_ifaddr*, align 8
  %14 = alloca %struct.fib6_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.in6_validator_info, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %6, align 8
  store %struct.ifa6_config* %1, %struct.ifa6_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %26 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ipv6_addr_type(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = call %struct.net* @dev_net(%struct.TYPE_10__* %31)
  store %struct.net* %32, %struct.net** %12, align 8
  store %struct.inet6_ifaddr* null, %struct.inet6_ifaddr** %13, align 8
  store %struct.fib6_info* null, %struct.fib6_info** %14, align 8
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %68, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %43 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IFA_F_MCAUTOJOIN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %41, %36
  %49 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %50 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_LOOPBACK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %48
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %59 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = call i32 @netif_is_l3_master(%struct.TYPE_10__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IPV6_ADDR_LOOPBACK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %41, %23
  %69 = load i32, i32* @EADDRNOTAVAIL, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.inet6_ifaddr* @ERR_PTR(i32 %70)
  store %struct.inet6_ifaddr* %71, %struct.inet6_ifaddr** %5, align 8
  br label %313

72:                                               ; preds = %63, %57, %48
  %73 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %74 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %284

80:                                               ; preds = %72
  %81 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %82 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EACCES, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  br label %284

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.in6_validator_info, %struct.in6_validator_info* %16, i32 0, i32 0
  %94 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  store %struct.netlink_ext_ack* %94, %struct.netlink_ext_ack** %93, align 8
  %95 = getelementptr inbounds %struct.in6_validator_info, %struct.in6_validator_info* %16, i32 0, i32 1
  %96 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  store %struct.inet6_dev* %96, %struct.inet6_dev** %95, align 8
  %97 = getelementptr inbounds %struct.in6_validator_info, %struct.in6_validator_info* %16, i32 0, i32 2
  %98 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %99 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %97, align 8
  %102 = load i32, i32* @NETDEV_UP, align 4
  %103 = call i32 @inet6addr_validator_notifier_call_chain(i32 %102, %struct.in6_validator_info* %16)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @notifier_to_errno(i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %284

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i32, i32* %10, align 4
  %112 = call %struct.inet6_ifaddr* @kzalloc(i32 80, i32 %111)
  store %struct.inet6_ifaddr* %112, %struct.inet6_ifaddr** %13, align 8
  %113 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %114 = icmp ne %struct.inet6_ifaddr* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @ENOBUFS, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %15, align 4
  br label %284

118:                                              ; preds = %110
  %119 = load %struct.net*, %struct.net** %12, align 8
  %120 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %121 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %122 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call %struct.fib6_info* @addrconf_f6i_alloc(%struct.net* %119, %struct.inet6_dev* %120, i32* %123, i32 0, i32 %124)
  store %struct.fib6_info* %125, %struct.fib6_info** %14, align 8
  %126 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %127 = call i64 @IS_ERR(%struct.fib6_info* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %131 = call i32 @PTR_ERR(%struct.fib6_info* %130)
  store i32 %131, i32* %15, align 4
  store %struct.fib6_info* null, %struct.fib6_info** %14, align 8
  br label %284

132:                                              ; preds = %118
  %133 = load %struct.net*, %struct.net** %12, align 8
  %134 = getelementptr inbounds %struct.net, %struct.net* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %132
  %141 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %142 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %132
  %147 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %148 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %140
  %150 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %151 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @neigh_parms_data_state_setall(i32 %152)
  %154 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %155 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %154, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %159 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %158, i32 0, i32 17
  store i32 %157, i32* %159, align 4
  %160 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %161 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %149
  %165 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %166 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %170 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %169, i32 0, i32 16
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %164, %149
  %172 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %173 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %172, i32 0, i32 15
  %174 = call i32 @spin_lock_init(i32* %173)
  %175 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %176 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %175, i32 0, i32 14
  %177 = load i32, i32* @addrconf_dad_work, align 4
  %178 = call i32 @INIT_DELAYED_WORK(i32* %176, i32 %177)
  %179 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %180 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %179, i32 0, i32 13
  %181 = call i32 @INIT_HLIST_NODE(i32* %180)
  %182 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %183 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %186 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %185, i32 0, i32 12
  store i32 %184, i32* %186, align 8
  %187 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %188 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %191 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %193 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %196 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 8
  %197 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %198 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %201 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %203 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @IFA_F_NODAD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %171
  %209 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %210 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %211 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %171
  %215 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %216 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %219 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ifa6_config*, %struct.ifa6_config** %7, align 8
  %221 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %224 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %223, i32 0, i32 8
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @jiffies, align 4
  %226 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %227 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 8
  %228 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %229 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %228, i32 0, i32 7
  store i32 %225, i32* %229, align 4
  %230 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %231 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %230, i32 0, i32 1
  store i32 0, i32* %231, align 4
  %232 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %233 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %234 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %233, i32 0, i32 5
  store %struct.fib6_info* %232, %struct.fib6_info** %234, align 8
  %235 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %236 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %237 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %236, i32 0, i32 2
  store %struct.inet6_dev* %235, %struct.inet6_dev** %237, align 8
  %238 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %239 = call i32 @in6_dev_hold(%struct.inet6_dev* %238)
  %240 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %241 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %240, i32 0, i32 4
  %242 = call i32 @refcount_set(i32* %241, i32 1)
  %243 = call i32 (...) @rcu_read_lock_bh()
  %244 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %245 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %244, i32 0, i32 2
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %248 = call i32 @ipv6_add_addr_hash(%struct.TYPE_10__* %246, %struct.inet6_ifaddr* %247)
  store i32 %248, i32* %15, align 4
  %249 = load i32, i32* %15, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %214
  %252 = call i32 (...) @rcu_read_unlock_bh()
  br label %284

253:                                              ; preds = %214
  %254 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %255 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %254, i32 0, i32 0
  %256 = call i32 @write_lock(i32* %255)
  %257 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %258 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %259 = call i32 @ipv6_link_dev_addr(%struct.inet6_dev* %257, %struct.inet6_ifaddr* %258)
  %260 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %261 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @IFA_F_TEMPORARY, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %253
  %267 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %268 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %267, i32 0, i32 3
  %269 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %270 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %269, i32 0, i32 1
  %271 = call i32 @list_add(i32* %268, i32* %270)
  %272 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %273 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %272)
  br label %274

274:                                              ; preds = %266, %253
  %275 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %276 = call i32 @in6_ifa_hold(%struct.inet6_ifaddr* %275)
  %277 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %278 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %277, i32 0, i32 0
  %279 = call i32 @write_unlock(i32* %278)
  %280 = call i32 (...) @rcu_read_unlock_bh()
  %281 = load i32, i32* @NETDEV_UP, align 4
  %282 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %283 = call i32 @inet6addr_notifier_call_chain(i32 %281, %struct.inet6_ifaddr* %282)
  br label %284

284:                                              ; preds = %274, %251, %129, %115, %108, %86, %77
  %285 = load i32, i32* %15, align 4
  %286 = icmp slt i32 %285, 0
  %287 = zext i1 %286 to i32
  %288 = call i64 @unlikely(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %311

290:                                              ; preds = %284
  %291 = load %struct.fib6_info*, %struct.fib6_info** %14, align 8
  %292 = call i32 @fib6_info_release(%struct.fib6_info* %291)
  %293 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %294 = icmp ne %struct.inet6_ifaddr* %293, null
  br i1 %294, label %295, label %308

295:                                              ; preds = %290
  %296 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %297 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %296, i32 0, i32 2
  %298 = load %struct.inet6_dev*, %struct.inet6_dev** %297, align 8
  %299 = icmp ne %struct.inet6_dev* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %295
  %301 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %302 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %301, i32 0, i32 2
  %303 = load %struct.inet6_dev*, %struct.inet6_dev** %302, align 8
  %304 = call i32 @in6_dev_put(%struct.inet6_dev* %303)
  br label %305

305:                                              ; preds = %300, %295
  %306 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  %307 = call i32 @kfree(%struct.inet6_ifaddr* %306)
  br label %308

308:                                              ; preds = %305, %290
  %309 = load i32, i32* %15, align 4
  %310 = call %struct.inet6_ifaddr* @ERR_PTR(i32 %309)
  store %struct.inet6_ifaddr* %310, %struct.inet6_ifaddr** %13, align 8
  br label %311

311:                                              ; preds = %308, %284
  %312 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %13, align 8
  store %struct.inet6_ifaddr* %312, %struct.inet6_ifaddr** %5, align 8
  br label %313

313:                                              ; preds = %311, %68
  %314 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %5, align 8
  ret %struct.inet6_ifaddr* %314
}

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_10__*) #1

declare dso_local i32 @netif_is_l3_master(%struct.TYPE_10__*) #1

declare dso_local %struct.inet6_ifaddr* @ERR_PTR(i32) #1

declare dso_local i32 @inet6addr_validator_notifier_call_chain(i32, %struct.in6_validator_info*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local %struct.inet6_ifaddr* @kzalloc(i32, i32) #1

declare dso_local %struct.fib6_info* @addrconf_f6i_alloc(%struct.net*, %struct.inet6_dev*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fib6_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fib6_info*) #1

declare dso_local i32 @neigh_parms_data_state_setall(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @in6_dev_hold(%struct.inet6_dev*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @ipv6_add_addr_hash(%struct.TYPE_10__*, %struct.inet6_ifaddr*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @ipv6_link_dev_addr(%struct.inet6_dev*, %struct.inet6_ifaddr*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @in6_ifa_hold(%struct.inet6_ifaddr*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @inet6addr_notifier_call_chain(i32, %struct.inet6_ifaddr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @kfree(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
