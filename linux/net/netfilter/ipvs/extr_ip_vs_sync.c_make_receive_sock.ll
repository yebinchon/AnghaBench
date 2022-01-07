; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_make_receive_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_make_receive_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.net_device = type { i32 }
%struct.socket = type { %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%union.ipvs_sockaddr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error during creation of socket; terminating\0A\00", align 1
@SK_CAN_REUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error binding to the multicast addr\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Error joining to the multicast group\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %struct.net_device*, %struct.socket**)* @make_receive_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_receive_sock(%struct.netns_ipvs* %0, i32 %1, %struct.net_device* %2, %struct.socket** %3) #0 {
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
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
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
  br label %84

28:                                               ; preds = %4
  %29 = load %struct.socket*, %struct.socket** %11, align 8
  %30 = load %struct.socket**, %struct.socket*** %9, align 8
  store %struct.socket* %29, %struct.socket** %30, align 8
  %31 = load i32, i32* @SK_CAN_REUSE, align 4
  %32 = load %struct.socket*, %struct.socket** %11, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %37 = call i32 @sysctl_sync_sock_size(%struct.netns_ipvs* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.socket*, %struct.socket** %11, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @set_sock_size(%struct.TYPE_11__* %43, i32 0, i32 %44)
  br label %46

46:                                               ; preds = %40, %28
  %47 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %48 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @get_mcast_sockaddr(%union.ipvs_sockaddr* %10, i32* %13, %struct.TYPE_12__* %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.socket*, %struct.socket** %11, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.socket*, %struct.socket** %11, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %61, align 8
  %63 = load %struct.socket*, %struct.socket** %11, align 8
  %64 = bitcast %union.ipvs_sockaddr* %10 to %struct.sockaddr*
  %65 = load i32, i32* %13, align 4
  %66 = call i32 %62(%struct.socket* %63, %struct.sockaddr* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %46
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %84

71:                                               ; preds = %46
  %72 = load %struct.socket*, %struct.socket** %11, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = bitcast %union.ipvs_sockaddr* %10 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = call i32 @join_mcast_group(%struct.TYPE_11__* %74, i32* %76, %struct.net_device* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %86

84:                                               ; preds = %81, %69, %26
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @sock_create_kern(i32, i64, i32, i32, %struct.socket**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sysctl_sync_sock_size(%struct.netns_ipvs*) #1

declare dso_local i32 @set_sock_size(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @get_mcast_sockaddr(%union.ipvs_sockaddr*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @join_mcast_group(%struct.TYPE_11__*, i32*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
