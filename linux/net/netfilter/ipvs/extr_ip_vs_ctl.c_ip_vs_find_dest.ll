; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_find_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_find_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32 }
%struct.netns_ipvs = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_service = type { i32 }

@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_MASQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_dest* @ip_vs_find_dest(%struct.netns_ipvs* %0, i32 %1, i32 %2, %union.nf_inet_addr* %3, i32 %4, %union.nf_inet_addr* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.ip_vs_dest*, align 8
  %12 = alloca %struct.netns_ipvs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.nf_inet_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.nf_inet_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ip_vs_dest*, align 8
  %23 = alloca %struct.ip_vs_service*, align 8
  %24 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %15, align 8
  store i32 %4, i32* %16, align 4
  store %union.nf_inet_addr* %5, %union.nf_inet_addr** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %20, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %31 = load i32, i32* %18, align 4
  %32 = call %struct.ip_vs_service* @ip_vs_service_find(%struct.netns_ipvs* %26, i32 %27, i32 %28, i32 %29, %union.nf_inet_addr* %30, i32 %31)
  store %struct.ip_vs_service* %32, %struct.ip_vs_service** %23, align 8
  %33 = load %struct.ip_vs_service*, %struct.ip_vs_service** %23, align 8
  %34 = icmp ne %struct.ip_vs_service* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %10
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %11, align 8
  br label %64

36:                                               ; preds = %10
  %37 = load i32, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @IP_VS_CONN_F_MASQ, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %24, align 4
  br label %46

46:                                               ; preds = %45, %39, %36
  %47 = load %struct.ip_vs_service*, %struct.ip_vs_service** %23, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %union.nf_inet_addr*, %union.nf_inet_addr** %15, align 8
  %50 = load i32, i32* %24, align 4
  %51 = call %struct.ip_vs_dest* @ip_vs_lookup_dest(%struct.ip_vs_service* %47, i32 %48, %union.nf_inet_addr* %49, i32 %50)
  store %struct.ip_vs_dest* %51, %struct.ip_vs_dest** %22, align 8
  %52 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %22, align 8
  %53 = icmp ne %struct.ip_vs_dest* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load %struct.ip_vs_service*, %struct.ip_vs_service** %23, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load %union.nf_inet_addr*, %union.nf_inet_addr** %15, align 8
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %16, align 4
  %60 = xor i32 %58, %59
  %61 = call %struct.ip_vs_dest* @ip_vs_lookup_dest(%struct.ip_vs_service* %55, i32 %56, %union.nf_inet_addr* %57, i32 %60)
  store %struct.ip_vs_dest* %61, %struct.ip_vs_dest** %22, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %22, align 8
  store %struct.ip_vs_dest* %63, %struct.ip_vs_dest** %11, align 8
  br label %64

64:                                               ; preds = %62, %35
  %65 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %11, align 8
  ret %struct.ip_vs_dest* %65
}

declare dso_local %struct.ip_vs_service* @ip_vs_service_find(%struct.netns_ipvs*, i32, i32, i32, %union.nf_inet_addr*, i32) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_lookup_dest(%struct.ip_vs_service*, i32, %union.nf_inet_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
