; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_conn_fill_param_persist.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_conn_fill_param_persist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_conn_param = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*, %struct.sk_buff*, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*)* @ip_vs_conn_fill_param_persist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_fill_param_persist(%struct.ip_vs_service* %0, %struct.sk_buff* %1, i32 %2, %union.nf_inet_addr* %3, i32 %4, %union.nf_inet_addr* %5, i32 %6, %struct.ip_vs_conn_param* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_vs_service*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.nf_inet_addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.nf_inet_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip_vs_conn_param*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store i32 %2, i32* %12, align 4
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %13, align 8
  store i32 %4, i32* %14, align 4
  store %union.nf_inet_addr* %5, %union.nf_inet_addr** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.ip_vs_conn_param* %7, %struct.ip_vs_conn_param** %17, align 8
  %18 = load %struct.ip_vs_service*, %struct.ip_vs_service** %10, align 8
  %19 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ip_vs_service*, %struct.ip_vs_service** %10, align 8
  %22 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %union.nf_inet_addr*, %union.nf_inet_addr** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load %union.nf_inet_addr*, %union.nf_inet_addr** %15, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %17, align 8
  %30 = call i32 @ip_vs_conn_fill_param(i32 %20, i32 %23, i32 %24, %union.nf_inet_addr* %25, i32 %26, %union.nf_inet_addr* %27, i32 %28, %struct.ip_vs_conn_param* %29)
  %31 = load %struct.ip_vs_service*, %struct.ip_vs_service** %10, align 8
  %32 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_2__* @rcu_dereference(i32 %33)
  %35 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %17, align 8
  %36 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %35, i32 0, i32 0
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %17, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %8
  %42 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %17, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)*, i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)** %45, align 8
  %47 = icmp ne i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %17, align 8
  %50 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)*, i32 (%struct.ip_vs_conn_param*, %struct.sk_buff*)** %52, align 8
  %54 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %17, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = call i32 %53(%struct.ip_vs_conn_param* %54, %struct.sk_buff* %55)
  store i32 %56, i32* %9, align 4
  br label %58

57:                                               ; preds = %41, %8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.TYPE_2__* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
