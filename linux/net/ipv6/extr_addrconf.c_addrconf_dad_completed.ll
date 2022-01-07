; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_completed.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i64, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.net_device* }
%struct.TYPE_11__ = type { i64, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@RTM_NEWADDR = common dso_local global i32 0, align 4
@IFA_LINK = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@in6addr_linklocal_allnodes = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@in6addr_linklocal_allrouters = common dso_local global i32 0, align 4
@IF_RS_SENT = common dso_local global i32 0, align 4
@IFA_F_TEMPORARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_ifaddr*, i32, i32)* @addrconf_dad_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_completed(%struct.inet6_ifaddr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %12 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %17 = call i32 @addrconf_del_dad_work(%struct.inet6_ifaddr* %16)
  %18 = load i32, i32* @RTM_NEWADDR, align 4
  %19 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %20 = call i32 @ipv6_ifa_notify(i32 %18, %struct.inet6_ifaddr* %19)
  %21 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %22 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = call i32 @read_lock_bh(i32* %24)
  %26 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %27 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFA_LINK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %33 = call i64 @ipv6_lonely_lladdr(%struct.inet6_ifaddr* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %3
  %36 = phi i1 [ false, %3 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %42 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = call i64 @ipv6_accept_ra(%struct.TYPE_13__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %48 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_LOOPBACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %54, %46, %40, %35
  %62 = phi i1 [ false, %46 ], [ false, %40 ], [ false, %35 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %65 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %64, i32 0, i32 2
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = call i32 @read_unlock_bh(i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %73 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = call i32 @ipv6_mc_dad_complete(%struct.TYPE_13__* %74)
  br label %76

76:                                               ; preds = %71, %61
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %81 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %79
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = call %struct.TYPE_12__* @dev_net(%struct.net_device* %88)
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %87, %79
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %99 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %98, i32 0, i32 4
  %100 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %101 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %100, i32 0, i32 2
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @ndisc_send_na(%struct.net_device* %97, i32* @in6addr_linklocal_allnodes, i32* %99, i32 %109, i32 0, i32 1, i32 1)
  br label %111

111:                                              ; preds = %96, %87, %76
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %170

114:                                              ; preds = %111
  %115 = load %struct.net_device*, %struct.net_device** %7, align 8
  %116 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %117 = call i64 @ipv6_get_lladdr(%struct.net_device* %115, %struct.in6_addr* %8, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %186

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = call i32 @ndisc_send_rs(%struct.net_device* %121, %struct.in6_addr* %8, i32* @in6addr_linklocal_allrouters)
  %123 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %124 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %123, i32 0, i32 2
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = call i32 @write_lock_bh(i32* %126)
  %128 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %129 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %128, i32 0, i32 3
  %130 = call i32 @spin_lock(i32* %129)
  %131 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %132 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %131, i32 0, i32 2
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @rfc3315_s14_backoff_init(i32 %136)
  %138 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %139 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %138, i32 0, i32 2
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 8
  %142 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %143 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %142, i32 0, i32 2
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @IF_RS_SENT, align 4
  %147 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %148 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %147, i32 0, i32 2
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  %153 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %154 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %153, i32 0, i32 2
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %157 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %156, i32 0, i32 2
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @addrconf_mod_rs_timer(%struct.TYPE_13__* %155, i32 %160)
  %162 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %163 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %162, i32 0, i32 3
  %164 = call i32 @spin_unlock(i32* %163)
  %165 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %166 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %165, i32 0, i32 2
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = call i32 @write_unlock_bh(i32* %168)
  br label %170

170:                                              ; preds = %120, %111
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.net_device*, %struct.net_device** %7, align 8
  %175 = call %struct.TYPE_12__* @dev_net(%struct.net_device* %174)
  %176 = call i32 @rt_genid_bump_ipv6(%struct.TYPE_12__* %175)
  br label %177

177:                                              ; preds = %173, %170
  %178 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %179 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IFA_F_TEMPORARY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = call i32 (...) @addrconf_verify_rtnl()
  br label %186

186:                                              ; preds = %119, %184, %177
  ret void
}

declare dso_local i32 @addrconf_del_dad_work(%struct.inet6_ifaddr*) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_lonely_lladdr(%struct.inet6_ifaddr*) #1

declare dso_local i64 @ipv6_accept_ra(%struct.TYPE_13__*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_mc_dad_complete(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @ndisc_send_na(%struct.net_device*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ipv6_get_lladdr(%struct.net_device*, %struct.in6_addr*, i32) #1

declare dso_local i32 @ndisc_send_rs(%struct.net_device*, %struct.in6_addr*, i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rfc3315_s14_backoff_init(i32) #1

declare dso_local i32 @addrconf_mod_rs_timer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @rt_genid_bump_ipv6(%struct.TYPE_12__*) #1

declare dso_local i32 @addrconf_verify_rtnl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
