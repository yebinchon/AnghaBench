; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___ip_do_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c___ip_do_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.flowi4 = type { i32 }
%struct.in_device = type { i32 }
%struct.fib_result = type { i32 }
%struct.neighbour = type { i32 }
%struct.net = type { i32 }
%struct.fib_nh_common = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@RTN_UNICAST = common dso_local global i64 0, align 8
@arp_tbl = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ip_rt_gc_timeout = common dso_local global i64 0, align 8
@DST_OBSOLETE_KILL = common dso_local global i32 0, align 4
@NETEVENT_NEIGH_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtable*, %struct.sk_buff*, %struct.flowi4*, i32)* @__ip_do_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_do_redirect(%struct.rtable* %0, %struct.sk_buff* %1, %struct.flowi4* %2, i32 %3) #0 {
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flowi4*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.in_device*, align 8
  %13 = alloca %struct.fib_result, align 4
  %14 = alloca %struct.neighbour*, align 8
  %15 = alloca %struct.net*, align 8
  %16 = alloca %struct.fib_nh_common*, align 8
  store %struct.rtable* %0, %struct.rtable** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.flowi4* %2, %struct.flowi4** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.TYPE_8__* @icmp_hdr(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.TYPE_8__* @icmp_hdr(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 7
  switch i32 %33, label %35 [
    i32 129, label %34
    i32 128, label %34
    i32 131, label %34
    i32 130, label %34
  ]

34:                                               ; preds = %4, %4, %4, %4
  br label %36

35:                                               ; preds = %4
  br label %171

36:                                               ; preds = %34
  %37 = load %struct.rtable*, %struct.rtable** %5, align 8
  %38 = getelementptr inbounds %struct.rtable, %struct.rtable* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.rtable*, %struct.rtable** %5, align 8
  %44 = getelementptr inbounds %struct.rtable, %struct.rtable* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36
  br label %171

49:                                               ; preds = %42
  %50 = load %struct.net_device*, %struct.net_device** %11, align 8
  %51 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %50)
  store %struct.in_device* %51, %struct.in_device** %12, align 8
  %52 = load %struct.in_device*, %struct.in_device** %12, align 8
  %53 = icmp ne %struct.in_device* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %171

55:                                               ; preds = %49
  %56 = load %struct.net_device*, %struct.net_device** %11, align 8
  %57 = call %struct.net* @dev_net(%struct.net_device* %56)
  store %struct.net* %57, %struct.net** %15, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %55
  %62 = load %struct.in_device*, %struct.in_device** %12, align 8
  %63 = call i32 @IN_DEV_RX_REDIRECTS(%struct.in_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @ipv4_is_multicast(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @ipv4_is_lbcast(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @ipv4_is_zeronet(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69, %65, %61, %55
  br label %171

78:                                               ; preds = %73
  %79 = load %struct.in_device*, %struct.in_device** %12, align 8
  %80 = call i32 @IN_DEV_SHARED_MEDIA(%struct.in_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %78
  %83 = load %struct.in_device*, %struct.in_device** %12, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @inet_addr_onlink(%struct.in_device* %83, i64 %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %171

89:                                               ; preds = %82
  %90 = load %struct.in_device*, %struct.in_device** %12, align 8
  %91 = call i64 @IN_DEV_SEC_REDIRECTS(%struct.in_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i64, i64* %9, align 8
  %95 = load %struct.net_device*, %struct.net_device** %11, align 8
  %96 = call i64 @ip_fib_check_default(i64 %94, %struct.net_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %171

99:                                               ; preds = %93, %89
  br label %108

100:                                              ; preds = %78
  %101 = load %struct.net*, %struct.net** %15, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i64 @inet_addr_type(%struct.net* %101, i64 %102)
  %104 = load i64, i64* @RTN_UNICAST, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %171

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %99
  %109 = load %struct.rtable*, %struct.rtable** %5, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %9, align 8
  %114 = call %struct.neighbour* @__ipv4_neigh_lookup(i32 %112, i64 %113)
  store %struct.neighbour* %114, %struct.neighbour** %14, align 8
  %115 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %116 = icmp ne %struct.neighbour* %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %108
  %118 = load %struct.rtable*, %struct.rtable** %5, align 8
  %119 = getelementptr inbounds %struct.rtable, %struct.rtable* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.neighbour* @neigh_create(i32* @arp_tbl, i64* %9, i32 %121)
  store %struct.neighbour* %122, %struct.neighbour** %14, align 8
  br label %123

123:                                              ; preds = %117, %108
  %124 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %125 = call i32 @IS_ERR(%struct.neighbour* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %170, label %127

127:                                              ; preds = %123
  %128 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %129 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NUD_VALID, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %136 = call i32 @neigh_event_send(%struct.neighbour* %135, i32* null)
  br label %167

137:                                              ; preds = %127
  %138 = load %struct.net*, %struct.net** %15, align 8
  %139 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %140 = call i64 @fib_lookup(%struct.net* %138, %struct.flowi4* %139, %struct.fib_result* %13, i32 0)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %13, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.fib_nh_common* @FIB_RES_NHC(i32 %144)
  store %struct.fib_nh_common* %145, %struct.fib_nh_common** %16, align 8
  %146 = load %struct.fib_nh_common*, %struct.fib_nh_common** %16, align 8
  %147 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %148 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* @jiffies, align 8
  %152 = load i64, i64* @ip_rt_gc_timeout, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @update_or_create_fnhe(%struct.fib_nh_common* %146, i32 %149, i64 %150, i32 0, i32 0, i64 %153)
  br label %155

155:                                              ; preds = %142, %137
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* @DST_OBSOLETE_KILL, align 4
  %160 = load %struct.rtable*, %struct.rtable** %5, align 8
  %161 = getelementptr inbounds %struct.rtable, %struct.rtable* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %158, %155
  %164 = load i32, i32* @NETEVENT_NEIGH_UPDATE, align 4
  %165 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %166 = call i32 @call_netevent_notifiers(i32 %164, %struct.neighbour* %165)
  br label %167

167:                                              ; preds = %163, %134
  %168 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  %169 = call i32 @neigh_release(%struct.neighbour* %168)
  br label %170

170:                                              ; preds = %167, %123
  br label %171

171:                                              ; preds = %35, %48, %54, %170, %106, %98, %88, %77
  ret void
}

declare dso_local %struct.TYPE_8__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @IN_DEV_RX_REDIRECTS(%struct.in_device*) #1

declare dso_local i64 @ipv4_is_multicast(i64) #1

declare dso_local i64 @ipv4_is_lbcast(i64) #1

declare dso_local i64 @ipv4_is_zeronet(i64) #1

declare dso_local i32 @IN_DEV_SHARED_MEDIA(%struct.in_device*) #1

declare dso_local i32 @inet_addr_onlink(%struct.in_device*, i64, i64) #1

declare dso_local i64 @IN_DEV_SEC_REDIRECTS(%struct.in_device*) #1

declare dso_local i64 @ip_fib_check_default(i64, %struct.net_device*) #1

declare dso_local i64 @inet_addr_type(%struct.net*, i64) #1

declare dso_local %struct.neighbour* @__ipv4_neigh_lookup(i32, i64) #1

declare dso_local %struct.neighbour* @neigh_create(i32*, i64*, i32) #1

declare dso_local i32 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i64 @fib_lookup(%struct.net*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local %struct.fib_nh_common* @FIB_RES_NHC(i32) #1

declare dso_local i32 @update_or_create_fnhe(%struct.fib_nh_common*, i32, i64, i32, i32, i64) #1

declare dso_local i32 @call_netevent_notifiers(i32, %struct.neighbour*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
