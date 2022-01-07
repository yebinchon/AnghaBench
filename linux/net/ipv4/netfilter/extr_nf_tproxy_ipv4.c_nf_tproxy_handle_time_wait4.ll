; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_tproxy_ipv4.c_nf_tproxy_handle_time_wait4.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_tproxy_ipv4.c_nf_tproxy_handle_time_wait4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.tcphdr = type { i64, i32, i32, i32, i32, i64 }

@NF_TPROXY_LOOKUP_LISTENER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @nf_tproxy_handle_time_wait4(%struct.net* %0, %struct.sk_buff* %1, i64 %2, i64 %3, %struct.sock* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.tcphdr, align 8
  %14 = alloca %struct.tcphdr*, align 8
  %15 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.sock* %4, %struct.sock** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @ip_hdrlen(%struct.sk_buff* %19)
  %21 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %20, i32 32, %struct.tcphdr* %13)
  store %struct.tcphdr* %21, %struct.tcphdr** %14, align 8
  %22 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %23 = icmp eq %struct.tcphdr* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load %struct.sock*, %struct.sock** %11, align 8
  %26 = call i32 @inet_twsk(%struct.sock* %25)
  %27 = call i32 @inet_twsk_put(i32 %26)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %95

28:                                               ; preds = %5
  %29 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %28
  %34 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %93, label %38

38:                                               ; preds = %33
  %39 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %93, label %43

43:                                               ; preds = %38
  %44 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %93, label %48

48:                                               ; preds = %43
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* %9, align 8
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i64 [ %60, %59 ], [ %64, %61 ]
  %67 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %68 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %10, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.tcphdr*, %struct.tcphdr** %14, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi i64 [ %73, %72 ], [ %77, %74 ]
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NF_TPROXY_LOOKUP_LISTENER, align 4
  %84 = call %struct.sock* @nf_tproxy_get_sock_v4(%struct.net* %49, %struct.sk_buff* %50, i32 %53, i32 %56, i64 %66, i32 %69, i64 %79, i32 %82, i32 %83)
  store %struct.sock* %84, %struct.sock** %15, align 8
  %85 = load %struct.sock*, %struct.sock** %15, align 8
  %86 = icmp ne %struct.sock* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.sock*, %struct.sock** %11, align 8
  %89 = call i32 @inet_twsk(%struct.sock* %88)
  %90 = call i32 @inet_twsk_deschedule_put(i32 %89)
  %91 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %91, %struct.sock** %11, align 8
  br label %92

92:                                               ; preds = %87, %78
  br label %93

93:                                               ; preds = %92, %43, %38, %33, %28
  %94 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %94, %struct.sock** %6, align 8
  br label %95

95:                                               ; preds = %93, %24
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %96
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @inet_twsk_put(i32) #1

declare dso_local i32 @inet_twsk(%struct.sock*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v4(%struct.net*, %struct.sk_buff*, i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @inet_twsk_deschedule_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
