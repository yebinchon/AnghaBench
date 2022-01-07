; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_join_mcast_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_join_mcast_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.in_addr = type { i32 }
%struct.net_device = type { i64 }
%struct.ip_mreqn = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.in_addr*, %struct.net_device*)* @join_mcast_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @join_mcast_group(%struct.sock* %0, %struct.in_addr* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ip_mreqn, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %10 = call i32 @memset(%struct.ip_mreqn* %8, i32 0, i32 16)
  %11 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 1
  %12 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %13 = call i32 @memcpy(i32* %11, %struct.in_addr* %12, i32 4)
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %18, %3
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @lock_sock(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = call i32 @ip_mc_join_group(%struct.sock* %36, %struct.ip_mreqn* %8)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call i32 @release_sock(%struct.sock* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.ip_mreqn*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @ip_mc_join_group(%struct.sock*, %struct.ip_mreqn*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
