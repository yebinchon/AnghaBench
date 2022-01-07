; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_ops_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_ops_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_service = type { i32 }

@IP_VS_SVC_F_ONEPACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*)* @ip_vs_conn_ops_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_ops_mode(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  %5 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %6 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ip_vs_service* @rcu_dereference(i32 %15)
  store %struct.ip_vs_service* %16, %struct.ip_vs_service** %4, align 8
  %17 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %18 = icmp ne %struct.ip_vs_service* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %21 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IP_VS_SVC_F_ONEPACKET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %10
  %27 = phi i1 [ false, %10 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ip_vs_service* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
