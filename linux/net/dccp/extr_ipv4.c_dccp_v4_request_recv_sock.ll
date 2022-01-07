; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_request_recv_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_request_recv_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32*, i32, i32 }
%struct.inet_sock = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LINUX_MIB_LISTENOVERFLOWS = common dso_local global i32 0, align 4
@LINUX_MIB_LISTENDROPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @dccp_v4_request_recv_sock(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.dst_entry* %3, %struct.request_sock* %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.request_sock*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.request_sock*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.inet_request_sock*, align 8
  %15 = alloca %struct.inet_sock*, align 8
  %16 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.request_sock* %2, %struct.request_sock** %10, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %11, align 8
  store %struct.request_sock* %4, %struct.request_sock** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call i64 @sk_acceptq_is_full(%struct.sock* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %109

21:                                               ; preds = %6
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call %struct.sock* @dccp_create_openreq_child(%struct.sock* %22, %struct.request_sock* %23, %struct.sk_buff* %24)
  store %struct.sock* %25, %struct.sock** %16, align 8
  %26 = load %struct.sock*, %struct.sock** %16, align 8
  %27 = icmp eq %struct.sock* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %114

29:                                               ; preds = %21
  %30 = load %struct.sock*, %struct.sock** %16, align 8
  %31 = call %struct.inet_sock* @inet_sk(%struct.sock* %30)
  store %struct.inet_sock* %31, %struct.inet_sock** %15, align 8
  %32 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %33 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %32)
  store %struct.inet_request_sock* %33, %struct.inet_request_sock** %14, align 8
  %34 = load %struct.sock*, %struct.sock** %16, align 8
  %35 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %36 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sk_daddr_set(%struct.sock* %34, i32 %37)
  %39 = load %struct.sock*, %struct.sock** %16, align 8
  %40 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %41 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sk_rcv_saddr_set(%struct.sock* %39, i32 %42)
  %44 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %45 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %48 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %50 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %53 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rcu_dereference(i32* %54)
  %56 = call i32 @RCU_INIT_POINTER(i32* %51, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = call i32 @inet_iif(%struct.sk_buff* %57)
  %59 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %60 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %66 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = call i32 (...) @prandom_u32()
  %68 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %69 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %71 = icmp eq %struct.dst_entry* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %29
  %73 = load %struct.sock*, %struct.sock** %8, align 8
  %74 = load %struct.sock*, %struct.sock** %16, align 8
  %75 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  %76 = call %struct.dst_entry* @inet_csk_route_child_sock(%struct.sock* %73, %struct.sock* %74, %struct.request_sock* %75)
  store %struct.dst_entry* %76, %struct.dst_entry** %11, align 8
  %77 = icmp eq %struct.dst_entry* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %122

79:                                               ; preds = %72, %29
  %80 = load %struct.sock*, %struct.sock** %16, align 8
  %81 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %82 = call i32 @sk_setup_caps(%struct.sock* %80, %struct.dst_entry* %81)
  %83 = load %struct.sock*, %struct.sock** %16, align 8
  %84 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %85 = call i32 @dst_mtu(%struct.dst_entry* %84)
  %86 = call i32 @dccp_sync_mss(%struct.sock* %83, i32 %85)
  %87 = load %struct.sock*, %struct.sock** %8, align 8
  %88 = load %struct.sock*, %struct.sock** %16, align 8
  %89 = call i64 @__inet_inherit_port(%struct.sock* %87, %struct.sock* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %122

92:                                               ; preds = %79
  %93 = load %struct.sock*, %struct.sock** %16, align 8
  %94 = load %struct.request_sock*, %struct.request_sock** %12, align 8
  %95 = call i32 @req_to_sk(%struct.request_sock* %94)
  %96 = call i32 @inet_ehash_nolisten(%struct.sock* %93, i32 %95)
  %97 = load i32*, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.inet_request_sock*, %struct.inet_request_sock** %14, align 8
  %103 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %107

104:                                              ; preds = %92
  %105 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %106 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %108, %struct.sock** %7, align 8
  br label %129

109:                                              ; preds = %20
  %110 = load %struct.sock*, %struct.sock** %8, align 8
  %111 = call i32 @sock_net(%struct.sock* %110)
  %112 = load i32, i32* @LINUX_MIB_LISTENOVERFLOWS, align 4
  %113 = call i32 @__NET_INC_STATS(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %28
  %115 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %116 = call i32 @dst_release(%struct.dst_entry* %115)
  br label %117

117:                                              ; preds = %122, %114
  %118 = load %struct.sock*, %struct.sock** %8, align 8
  %119 = call i32 @sock_net(%struct.sock* %118)
  %120 = load i32, i32* @LINUX_MIB_LISTENDROPS, align 4
  %121 = call i32 @__NET_INC_STATS(i32 %119, i32 %120)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %129

122:                                              ; preds = %91, %78
  %123 = load %struct.inet_sock*, %struct.inet_sock** %15, align 8
  %124 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = load %struct.sock*, %struct.sock** %16, align 8
  %126 = call i32 @inet_csk_prepare_forced_close(%struct.sock* %125)
  %127 = load %struct.sock*, %struct.sock** %16, align 8
  %128 = call i32 @dccp_done(%struct.sock* %127)
  br label %117

129:                                              ; preds = %117, %107
  %130 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %130
}

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @dccp_create_openreq_child(%struct.sock*, %struct.request_sock*, %struct.sk_buff*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @sk_daddr_set(%struct.sock*, i32) #1

declare dso_local i32 @sk_rcv_saddr_set(%struct.sock*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, i32) #1

declare dso_local i32 @rcu_dereference(i32*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local %struct.dst_entry* @inet_csk_route_child_sock(%struct.sock*, %struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @dccp_sync_mss(%struct.sock*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @__inet_inherit_port(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @inet_ehash_nolisten(%struct.sock*, i32) #1

declare dso_local i32 @req_to_sk(%struct.request_sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @inet_csk_prepare_forced_close(%struct.sock*) #1

declare dso_local i32 @dccp_done(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
