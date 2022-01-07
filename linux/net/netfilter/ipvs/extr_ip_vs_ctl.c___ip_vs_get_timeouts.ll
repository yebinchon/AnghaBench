; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_get_timeouts.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_get_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_timeout_user = type { i8*, i8*, i8* }

@HZ = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IP_VS_TCP_S_ESTABLISHED = common dso_local global i64 0, align 8
@IP_VS_TCP_S_FIN_WAIT = common dso_local global i64 0, align 8
@IP_VS_UDP_S_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_timeout_user*)* @__ip_vs_get_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_get_timeouts(%struct.netns_ipvs* %0, %struct.ip_vs_timeout_user* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.ip_vs_timeout_user*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.ip_vs_timeout_user* %1, %struct.ip_vs_timeout_user** %4, align 8
  %5 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %4, align 8
  %6 = call i32 @memset(%struct.ip_vs_timeout_user* %5, i32 0, i32 24)
  ret void
}

declare dso_local i32 @memset(%struct.ip_vs_timeout_user*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
