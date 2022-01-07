; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_tproxy_ipv6.c_nf_tproxy_handle_time_wait6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_tproxy_ipv6.c_nf_tproxy_handle_time_wait6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sock = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.tcphdr = type { i64, i32, i32, i32, i32, i64 }

@NF_TPROXY_LOOKUP_LISTENER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @nf_tproxy_handle_time_wait6(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.net* %3, %struct.in6_addr* %4, i64 %5, %struct.sock* %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca %struct.tcphdr, align 8
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.net* %3, %struct.net** %12, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.sock* %6, %struct.sock** %15, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %20)
  store %struct.ipv6hdr* %21, %struct.ipv6hdr** %16, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %22, i32 %23, i32 32, %struct.tcphdr* %17)
  store %struct.tcphdr* %24, %struct.tcphdr** %18, align 8
  %25 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %26 = icmp eq %struct.tcphdr* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load %struct.sock*, %struct.sock** %15, align 8
  %29 = call i32 @inet_twsk(%struct.sock* %28)
  %30 = call i32 @inet_twsk_put(i32 %29)
  store %struct.sock* null, %struct.sock** %8, align 8
  br label %91

31:                                               ; preds = %7
  %32 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %31
  %37 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %89, label %41

41:                                               ; preds = %36
  %42 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %43 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %89, label %46

46:                                               ; preds = %41
  %47 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %89, label %51

51:                                               ; preds = %46
  %52 = load %struct.net*, %struct.net** %12, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %57 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %56, i32 0, i32 1
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %60 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %61 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %60, i32 0, i32 0
  %62 = call i32 @nf_tproxy_laddr6(%struct.sk_buff* %58, %struct.in6_addr* %59, i32* %61)
  %63 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %64 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %51
  %69 = load i64, i64* %14, align 8
  br label %74

70:                                               ; preds = %51
  %71 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi i64 [ %69, %68 ], [ %73, %70 ]
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NF_TPROXY_LOOKUP_LISTENER, align 4
  %80 = call %struct.sock* @nf_tproxy_get_sock_v6(%struct.net* %52, %struct.sk_buff* %53, i32 %54, i32 %55, i32* %57, i32 %62, i32 %65, i64 %75, i32 %78, i32 %79)
  store %struct.sock* %80, %struct.sock** %19, align 8
  %81 = load %struct.sock*, %struct.sock** %19, align 8
  %82 = icmp ne %struct.sock* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.sock*, %struct.sock** %15, align 8
  %85 = call i32 @inet_twsk(%struct.sock* %84)
  %86 = call i32 @inet_twsk_deschedule_put(i32 %85)
  %87 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %87, %struct.sock** %15, align 8
  br label %88

88:                                               ; preds = %83, %74
  br label %89

89:                                               ; preds = %88, %46, %41, %36, %31
  %90 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %90, %struct.sock** %8, align 8
  br label %91

91:                                               ; preds = %89, %27
  %92 = load %struct.sock*, %struct.sock** %8, align 8
  ret %struct.sock* %92
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v6(%struct.net*, %struct.sk_buff*, i32, i32, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @nf_tproxy_laddr6(%struct.sk_buff*, %struct.in6_addr*, i32*) #1

declare dso_local i32 @inet_twsk_deschedule_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
