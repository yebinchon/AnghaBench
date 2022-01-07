; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_dh.c_ip_vs_dh_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_dh.c_ip_vs_dh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32 }
%struct.ip_vs_dh_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest* (i32, %struct.ip_vs_dh_state*, %union.nf_inet_addr*)* @ip_vs_dh_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest* @ip_vs_dh_get(i32 %0, %struct.ip_vs_dh_state* %1, %union.nf_inet_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_dh_state*, align 8
  %6 = alloca %union.nf_inet_addr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ip_vs_dh_state* %1, %struct.ip_vs_dh_state** %5, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %6, align 8
  %7 = load %struct.ip_vs_dh_state*, %struct.ip_vs_dh_state** %5, align 8
  %8 = getelementptr inbounds %struct.ip_vs_dh_state, %struct.ip_vs_dh_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %12 = call i64 @ip_vs_dh_hashkey(i32 %10, %union.nf_inet_addr* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ip_vs_dest* @rcu_dereference(i32 %15)
  ret %struct.ip_vs_dest* %16
}

declare dso_local %struct.ip_vs_dest* @rcu_dereference(i32) #1

declare dso_local i64 @ip_vs_dh_hashkey(i32, %union.nf_inet_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
