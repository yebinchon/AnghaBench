; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_make_send_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_make_send_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.socket = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%union.ipvs_sockaddr = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error during creation of socket; terminating\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error setting outbound mcast interface\0A\00", align 1
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Error binding address of the mcast interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Error connecting to the multicast addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.net_device*, %struct.socket**)* @make_send_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_send_sock(%struct.netns_ipvs* %0, i32 %1, %struct.net_device* %2, %struct.socket** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.socket**, align 8
  %10 = alloca %union.ipvs_sockaddr, align 4
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.socket** %3, %struct.socket*** %9, align 8
  %14 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %15 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %18 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = load i32, i32* @IPPROTO_UDP, align 4
  %23 = call i32 @sock_create_kern(i32 %16, i64 %20, i32 %21, i32 %22, %struct.socket** %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %104

28:                                               ; preds = %4
  %29 = load %struct.socket*, %struct.socket** %11, align 8
  %30 = load %struct.socket**, %struct.socket*** %9, align 8
  store %struct.socket* %29, %struct.socket** %30, align 8
  %31 = load %struct.socket*, %struct.socket** %11, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call i32 @set_mcast_if(i32 %33, %struct.net_device* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %104

40:                                               ; preds = %28
  %41 = load %struct.socket*, %struct.socket** %11, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @set_mcast_loop(i32 %43, i32 0)
  %45 = load %struct.socket*, %struct.socket** %11, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %49 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @set_mcast_ttl(i32 %47, i32 %51)
  %53 = load %struct.socket*, %struct.socket** %11, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  %57 = call i32 @set_mcast_pmtudisc(i32 %55, i32 %56)
  %58 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %59 = call i32 @sysctl_sync_sock_size(%struct.netns_ipvs* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %40
  %63 = load %struct.socket*, %struct.socket** %11, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @set_sock_size(i32 %65, i32 1, i32 %66)
  br label %68

68:                                               ; preds = %62, %40
  %69 = load i64, i64* @AF_INET, align 8
  %70 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %71 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.socket*, %struct.socket** %11, align 8
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = call i32 @bind_mcastif_addr(%struct.socket* %76, %struct.net_device* %77)
  store i32 %78, i32* %12, align 4
  br label %80

79:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %104

85:                                               ; preds = %80
  %86 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %87 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @get_mcast_sockaddr(%union.ipvs_sockaddr* %10, i32* %13, %struct.TYPE_4__* %87, i32 %88)
  %90 = load %struct.socket*, %struct.socket** %11, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %93, align 8
  %95 = load %struct.socket*, %struct.socket** %11, align 8
  %96 = bitcast %union.ipvs_sockaddr* %10 to %struct.sockaddr*
  %97 = load i32, i32* %13, align 4
  %98 = call i32 %94(%struct.socket* %95, %struct.sockaddr* %96, i32 %97, i32 0)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %104

103:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %106

104:                                              ; preds = %101, %83, %38, %26
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @sock_create_kern(i32, i64, i32, i32, %struct.socket**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_mcast_if(i32, %struct.net_device*) #1

declare dso_local i32 @set_mcast_loop(i32, i32) #1

declare dso_local i32 @set_mcast_ttl(i32, i32) #1

declare dso_local i32 @set_mcast_pmtudisc(i32, i32) #1

declare dso_local i32 @sysctl_sync_sock_size(%struct.netns_ipvs*) #1

declare dso_local i32 @set_sock_size(i32, i32, i32) #1

declare dso_local i32 @bind_mcastif_addr(%struct.socket*, %struct.net_device*) #1

declare dso_local i32 @get_mcast_sockaddr(%union.ipvs_sockaddr*, i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
