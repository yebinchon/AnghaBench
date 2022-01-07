; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.ip_tunnel = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@ipip_net_id = common dso_local global i32 0, align 4
@TUNNEL_NO_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ICMP_EXC_TTL = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPTUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipip_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip_tunnel_net*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call %struct.net* @dev_net(%struct.TYPE_8__* %14)
  store %struct.net* %15, %struct.net** %5, align 8
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load i32, i32* @ipip_net_id, align 4
  %18 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.ip_tunnel_net* %18, %struct.ip_tunnel_net** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.iphdr*
  store %struct.iphdr* %22, %struct.iphdr** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.TYPE_7__* @icmp_hdr(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call %struct.TYPE_7__* @icmp_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %31 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TUNNEL_NO_KEY, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net* %31, i32 %36, i32 %37, i32 %40, i32 %43, i32 0)
  store %struct.ip_tunnel* %44, %struct.ip_tunnel** %10, align 8
  %45 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %46 = icmp ne %struct.ip_tunnel* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %140

50:                                               ; preds = %2
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %64 [
    i32 131, label %52
    i32 128, label %57
    i32 130, label %63
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %55 [
    i32 129, label %54
  ]

54:                                               ; preds = %52
  br label %140

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  br label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ICMP_EXC_TTL, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %140

62:                                               ; preds = %57
  br label %65

63:                                               ; preds = %50
  br label %65

64:                                               ; preds = %50
  br label %140

65:                                               ; preds = %63, %62, %56
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 131
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ipv4_update_pmtu(%struct.sk_buff* %73, %struct.net* %74, i32 %75, i32 %79, i32 %82)
  br label %140

84:                                               ; preds = %68, %65
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = load %struct.net*, %struct.net** %5, align 8
  %90 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %95 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ipv4_redirect(%struct.sk_buff* %88, %struct.net* %89, i32 %93, i32 %96)
  br label %140

98:                                               ; preds = %84
  %99 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %100 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %140

108:                                              ; preds = %98
  %109 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %110 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %140

119:                                              ; preds = %115, %108
  %120 = load i64, i64* @jiffies, align 8
  %121 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %122 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IPTUNNEL_ERR_TIMEO, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i64 @time_before(i64 %120, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %130 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %136

133:                                              ; preds = %119
  %134 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %135 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i64, i64* @jiffies, align 8
  %138 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %139 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %118, %105, %87, %72, %64, %61, %54, %47
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_8__*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.TYPE_7__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_lookup(%struct.ip_tunnel_net*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipv4_update_pmtu(%struct.sk_buff*, %struct.net*, i32, i32, i32) #1

declare dso_local i32 @ipv4_redirect(%struct.sk_buff*, %struct.net*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
