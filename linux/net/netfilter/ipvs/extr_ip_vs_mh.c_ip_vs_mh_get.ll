; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_mh_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@IP_VS_MH_TAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.ip_vs_mh_state*, %union.nf_inet_addr*, i32)* @ip_vs_mh_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest* @ip_vs_mh_get(%struct.ip_vs_service* %0, %struct.ip_vs_mh_state* %1, %union.nf_inet_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca %struct.ip_vs_mh_state*, align 8
  %7 = alloca %union.nf_inet_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %5, align 8
  store %struct.ip_vs_mh_state* %1, %struct.ip_vs_mh_state** %6, align 8
  store %union.nf_inet_addr* %2, %union.nf_inet_addr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %12 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %union.nf_inet_addr*, %union.nf_inet_addr** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %6, align 8
  %17 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %16, i32 0, i32 1
  %18 = call i32 @ip_vs_mh_hashkey(i32 %13, %union.nf_inet_addr* %14, i32 %15, i32* %17, i32 0)
  %19 = load i32, i32* @IP_VS_MH_TAB_SIZE, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %6, align 8
  %22 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ip_vs_dest* @rcu_dereference(i32 %28)
  store %struct.ip_vs_dest* %29, %struct.ip_vs_dest** %10, align 8
  %30 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %10, align 8
  %31 = icmp ne %struct.ip_vs_dest* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %10, align 8
  %34 = call i64 @is_unavailable(%struct.ip_vs_dest* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %4
  br label %39

37:                                               ; preds = %32
  %38 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %10, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi %struct.ip_vs_dest* [ null, %36 ], [ %38, %37 ]
  ret %struct.ip_vs_dest* %40
}

declare dso_local i32 @ip_vs_mh_hashkey(i32, %union.nf_inet_addr*, i32, i32*, i32) #1

declare dso_local %struct.ip_vs_dest* @rcu_dereference(i32) #1

declare dso_local i64 @is_unavailable(%struct.ip_vs_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
