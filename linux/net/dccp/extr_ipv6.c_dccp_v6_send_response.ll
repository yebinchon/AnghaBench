; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { %struct.ipv6_txoptions*, i32, i32, i32, i32, i32 }
%struct.ipv6_txoptions = type { i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.dst_entry = type { i32 }
%struct.dccp_hdr = type { i32 }

@IPPROTO_DCCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*)* @dccp_v6_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_send_response(%struct.sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.inet_request_sock*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.flowi6, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dst_entry*, align 8
  %13 = alloca %struct.dccp_hdr*, align 8
  %14 = alloca %struct.ipv6_txoptions*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  %15 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %16 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %15)
  store %struct.inet_request_sock* %16, %struct.inet_request_sock** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %17)
  store %struct.ipv6_pinfo* %18, %struct.ipv6_pinfo** %6, align 8
  store i32 -1, i32* %11, align 4
  %19 = call i32 @memset(%struct.flowi6* %10, i32 0, i32 32)
  %20 = load i32, i32* @IPPROTO_DCCP, align 4
  %21 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 6
  store i32 %20, i32* %21, align 4
  %22 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %23 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %27 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %32 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %36 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %40 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @htons(i32 %41)
  %43 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %45 = call i32 @flowi6_to_flowi(%struct.flowi6* %10)
  %46 = call i32 @security_req_classify_flow(%struct.request_sock* %44, i32 %45)
  %47 = call i32 (...) @rcu_read_lock()
  %48 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %49 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.ipv6_txoptions* @rcu_dereference(i32 %50)
  %52 = call %struct.in6_addr* @fl6_update_dst(%struct.flowi6* %10, %struct.ipv6_txoptions* %51, %struct.in6_addr* %9)
  store %struct.in6_addr* %52, %struct.in6_addr** %8, align 8
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %56 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %54, %struct.flowi6* %10, %struct.in6_addr* %55)
  store %struct.dst_entry* %56, %struct.dst_entry** %12, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %58 = call i64 @IS_ERR(%struct.dst_entry* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %2
  %61 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %62 = call i32 @PTR_ERR(%struct.dst_entry* %61)
  store i32 %62, i32* %11, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %12, align 8
  br label %114

63:                                               ; preds = %2
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %66 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %67 = call %struct.sk_buff* @dccp_make_response(%struct.sock* %64, %struct.dst_entry* %65, %struct.request_sock* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %7, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %70, label %113

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %71)
  store %struct.dccp_hdr* %72, %struct.dccp_hdr** %13, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %75 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %74, i32 0, i32 2
  %76 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %77 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %76, i32 0, i32 1
  %78 = call i32 @dccp_v6_csum_finish(%struct.sk_buff* %73, i32* %75, i32* %77)
  %79 = load %struct.dccp_hdr*, %struct.dccp_hdr** %13, align 8
  %80 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %82 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = call i32 (...) @rcu_read_lock()
  %86 = load %struct.inet_request_sock*, %struct.inet_request_sock** %5, align 8
  %87 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %86, i32 0, i32 0
  %88 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %87, align 8
  store %struct.ipv6_txoptions* %88, %struct.ipv6_txoptions** %14, align 8
  %89 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %14, align 8
  %90 = icmp ne %struct.ipv6_txoptions* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %70
  %92 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %93 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.ipv6_txoptions* @rcu_dereference(i32 %94)
  store %struct.ipv6_txoptions* %95, %struct.ipv6_txoptions** %14, align 8
  br label %96

96:                                               ; preds = %91, %70
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load %struct.sock*, %struct.sock** %3, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %14, align 8
  %103 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %104 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ip6_xmit(%struct.sock* %97, %struct.sk_buff* %98, %struct.flowi6* %10, i32 %101, %struct.ipv6_txoptions* %102, i32 %105, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = call i32 (...) @rcu_read_unlock()
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @net_xmit_eval(i32 %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %96, %63
  br label %114

114:                                              ; preds = %113, %60
  %115 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %116 = call i32 @dst_release(%struct.dst_entry* %115)
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @security_req_classify_flow(%struct.request_sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in6_addr* @fl6_update_dst(%struct.flowi6*, %struct.ipv6_txoptions*, %struct.in6_addr*) #1

declare dso_local %struct.ipv6_txoptions* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, %struct.in6_addr*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local %struct.sk_buff* @dccp_make_response(%struct.sock*, %struct.dst_entry*, %struct.request_sock*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v6_csum_finish(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.flowi6*, i32, %struct.ipv6_txoptions*, i32, i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
