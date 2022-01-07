; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.packet_sock = type { %struct.packet_fanout*, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.packet_fanout = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.tpacket_req_u = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @packet_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.packet_sock*, align 8
  %6 = alloca %struct.packet_fanout*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %union.tpacket_req_u, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.net* @sock_net(%struct.sock* %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.packet_sock* @pkt_sk(%struct.sock* %18)
  store %struct.packet_sock* %19, %struct.packet_sock** %5, align 8
  %20 = load %struct.net*, %struct.net** %7, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @sk_del_node_init_rcu(%struct.sock* %24)
  %26 = load %struct.net*, %struct.net** %7, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = call i32 (...) @preempt_disable()
  %31 = load %struct.net*, %struct.net** %7, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sock_prot_inuse_add(%struct.net* %31, i32 %34, i32 -1)
  %36 = call i32 (...) @preempt_enable()
  %37 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %38 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %37, i32 0, i32 3
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @unregister_prot_hook(%struct.sock* %40, i32 0)
  %42 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %43 = call i32 @packet_cached_dev_reset(%struct.packet_sock* %42)
  %44 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %45 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %15
  %50 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %51 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dev_put(i32* %53)
  %55 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %56 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %49, %15
  %59 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %60 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %59, i32 0, i32 3
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = call i32 @packet_flush_mclist(%struct.sock* %62)
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @lock_sock(%struct.sock* %64)
  %66 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %67 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = call i32 @memset(%union.tpacket_req_u* %8, i32 0, i32 4)
  %73 = load %struct.sock*, %struct.sock** %4, align 8
  %74 = call i32 @packet_set_ring(%struct.sock* %73, %union.tpacket_req_u* %8, i32 1, i32 0)
  br label %75

75:                                               ; preds = %71, %58
  %76 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %77 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = call i32 @memset(%union.tpacket_req_u* %8, i32 0, i32 4)
  %83 = load %struct.sock*, %struct.sock** %4, align 8
  %84 = call i32 @packet_set_ring(%struct.sock* %83, %union.tpacket_req_u* %8, i32 1, i32 1)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = call i32 @release_sock(%struct.sock* %86)
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = call %struct.packet_fanout* @fanout_release(%struct.sock* %88)
  store %struct.packet_fanout* %89, %struct.packet_fanout** %6, align 8
  %90 = call i32 (...) @synchronize_net()
  %91 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %92 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %91, i32 0, i32 0
  %93 = load %struct.packet_fanout*, %struct.packet_fanout** %92, align 8
  %94 = call i32 @kfree(%struct.packet_fanout* %93)
  %95 = load %struct.packet_fanout*, %struct.packet_fanout** %6, align 8
  %96 = icmp ne %struct.packet_fanout* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.packet_fanout*, %struct.packet_fanout** %6, align 8
  %99 = call i32 @fanout_release_data(%struct.packet_fanout* %98)
  %100 = load %struct.packet_fanout*, %struct.packet_fanout** %6, align 8
  %101 = call i32 @kfree(%struct.packet_fanout* %100)
  br label %102

102:                                              ; preds = %97, %85
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = call i32 @sock_orphan(%struct.sock* %103)
  %105 = load %struct.socket*, %struct.socket** %3, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %106, align 8
  %107 = load %struct.sock*, %struct.sock** %4, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 0
  %109 = call i32 @skb_queue_purge(i32* %108)
  %110 = load %struct.packet_sock*, %struct.packet_sock** %5, align 8
  %111 = call i32 @packet_free_pending(%struct.packet_sock* %110)
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = call i32 @sk_refcnt_debug_release(%struct.sock* %112)
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = call i32 @sock_put(%struct.sock* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %102, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sk_del_node_init_rcu(%struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @unregister_prot_hook(%struct.sock*, i32) #1

declare dso_local i32 @packet_cached_dev_reset(%struct.packet_sock*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @packet_flush_mclist(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @memset(%union.tpacket_req_u*, i32, i32) #1

declare dso_local i32 @packet_set_ring(%struct.sock*, %union.tpacket_req_u*, i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.packet_fanout* @fanout_release(%struct.sock*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @kfree(%struct.packet_fanout*) #1

declare dso_local i32 @fanout_release_data(%struct.packet_fanout*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @packet_free_pending(%struct.packet_sock*) #1

declare dso_local i32 @sk_refcnt_debug_release(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
