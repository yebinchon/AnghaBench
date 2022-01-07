; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ecn_create_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ecn_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.tcphdr = type { i64, i64, i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DST_FEATURE_ECN_MASK = common dso_local global i32 0, align 4
@DST_FEATURE_ECN_CA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_sock*, %struct.sk_buff*, %struct.sock*, %struct.dst_entry*)* @tcp_ecn_create_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ecn_create_request(%struct.request_sock* %0, %struct.sk_buff* %1, %struct.sock* %2, %struct.dst_entry* %3) #0 {
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.request_sock* %0, %struct.request_sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  store %struct.dst_entry* %3, %struct.dst_entry** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %15)
  store %struct.tcphdr* %16, %struct.tcphdr** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call %struct.net* @sock_net(%struct.sock* %17)
  store %struct.net* %18, %struct.net** %10, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %4
  %29 = phi i1 [ false, %4 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %85

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @INET_ECN_is_not_ect(i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %44 = load i32, i32* @DST_FEATURE_ECN_MASK, align 4
  %45 = call i32 @dst_feature(%struct.dst_entry* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.net*, %struct.net** %10, align 8
  %47 = getelementptr inbounds %struct.net, %struct.net* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %34
  %55 = phi i1 [ true, %34 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %61 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = call i64 @tcp_ca_needs_ecn(%struct.sock* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @DST_FEATURE_ECN_CA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %78 = bitcast %struct.request_sock* %77 to %struct.sock*
  %79 = call i64 @tcp_bpf_ca_needs_ecn(%struct.sock* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76, %71, %67, %64
  %82 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %83 = call %struct.TYPE_5__* @inet_rsk(%struct.request_sock* %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %33, %81, %76
  ret void
}

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @INET_ECN_is_not_ect(i32) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dst_feature(%struct.dst_entry*, i32) #1

declare dso_local i64 @tcp_ca_needs_ecn(%struct.sock*) #1

declare dso_local i64 @tcp_bpf_ca_needs_ecn(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @inet_rsk(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
