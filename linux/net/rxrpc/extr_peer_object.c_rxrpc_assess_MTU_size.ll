; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_assess_MTU_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_object.c_rxrpc_assess_MTU_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_peer = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32 }
%struct.dst_entry = type { i32 }
%struct.rtable = type { %struct.dst_entry }
%struct.flowi = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.flowi6, %struct.flowi4 }
%struct.flowi6 = type { i8*, i8*, i32, i32, i32, i32 }
%struct.flowi4 = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" [route err %ld]\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" [if_mtu %u]\00", align 1
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_sock*, %struct.rxrpc_peer*)* @rxrpc_assess_MTU_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_assess_MTU_size(%struct.rxrpc_sock* %0, %struct.rxrpc_peer* %1) #0 {
  %3 = alloca %struct.rxrpc_sock*, align 8
  %4 = alloca %struct.rxrpc_peer*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.flowi, align 8
  %9 = alloca %struct.flowi4*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %3, align 8
  store %struct.rxrpc_peer* %1, %struct.rxrpc_peer** %4, align 8
  %10 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %3, align 8
  %11 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %10, i32 0, i32 0
  %12 = call %struct.net* @sock_net(i32* %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = getelementptr inbounds %struct.flowi, %struct.flowi* %8, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store %struct.flowi4* %14, %struct.flowi4** %9, align 8
  %15 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %4, align 8
  %16 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %15, i32 0, i32 0
  store i32 1500, i32* %16, align 4
  %17 = call i32 @memset(%struct.flowi* %8, i32 0, i32 40)
  %18 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %4, align 8
  %19 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %47 [
    i32 129, label %23
  ]

23:                                               ; preds = %2
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %26 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %4, align 8
  %27 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @htons(i32 7000)
  %34 = call i8* @htons(i32 7001)
  %35 = load i32, i32* @IPPROTO_UDP, align 4
  %36 = call %struct.rtable* @ip_route_output_ports(%struct.net* %24, %struct.flowi4* %25, i32* null, i32 %32, i32 0, i8* %33, i8* %34, i32 %35, i32 0, i32 0)
  store %struct.rtable* %36, %struct.rtable** %7, align 8
  %37 = load %struct.rtable*, %struct.rtable** %7, align 8
  %38 = call i32 @IS_ERR(%struct.rtable* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load %struct.rtable*, %struct.rtable** %7, align 8
  %42 = call i32 @PTR_ERR(%struct.rtable* %41)
  %43 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %60

44:                                               ; preds = %23
  %45 = load %struct.rtable*, %struct.rtable** %7, align 8
  %46 = getelementptr inbounds %struct.rtable, %struct.rtable* %45, i32 0, i32 0
  store %struct.dst_entry* %46, %struct.dst_entry** %6, align 8
  br label %49

47:                                               ; preds = %2
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %51 = call i32 @dst_mtu(%struct.dst_entry* %50)
  %52 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %4, align 8
  %53 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %55 = call i32 @dst_release(%struct.dst_entry* %54)
  %56 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %4, align 8
  %57 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %49, %40
  ret void
}

declare dso_local %struct.net* @sock_net(i32*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local %struct.rtable* @ip_route_output_ports(%struct.net*, %struct.flowi4*, i32*, i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
