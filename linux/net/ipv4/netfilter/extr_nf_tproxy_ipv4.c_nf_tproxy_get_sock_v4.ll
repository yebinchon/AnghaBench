; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_tproxy_ipv4.c_nf_tproxy_get_sock_v4.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_nf_tproxy_ipv4.c_nf_tproxy_get_sock_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@tcp_hashinfo = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"tproxy socket lookup: proto %u %08x:%u -> %08x:%u, lookup type: %d, sock %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @nf_tproxy_get_sock_v4(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.net_device* %7, i32 %8) #0 {
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sock*, align 8
  %21 = alloca %struct.tcphdr, align 4
  %22 = alloca %struct.tcphdr*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.net_device* %7, %struct.net_device** %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %118 [
    i32 131, label %26
    i32 130, label %74
  ]

26:                                               ; preds = %9
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = call i64 @ip_hdrlen(%struct.sk_buff* %28)
  %30 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %27, i64 %29, i32 4, %struct.tcphdr* %21)
  store %struct.tcphdr* %30, %struct.tcphdr** %22, align 8
  %31 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %32 = icmp eq %struct.tcphdr* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store %struct.sock* null, %struct.sock** %10, align 8
  br label %134

34:                                               ; preds = %26
  %35 = load i32, i32* %19, align 4
  switch i32 %35, label %71 [
    i32 128, label %36
    i32 129, label %61
  ]

36:                                               ; preds = %34
  %37 = load %struct.net*, %struct.net** %11, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = call i64 @ip_hdrlen(%struct.sk_buff* %39)
  %41 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %42 = call i64 @__tcp_hdrlen(%struct.tcphdr* %41)
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load %struct.net_device*, %struct.net_device** %18, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.sock* @inet_lookup_listener(%struct.net* %37, i32* @tcp_hashinfo, %struct.sk_buff* %38, i64 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %50, i32 0)
  store %struct.sock* %51, %struct.sock** %20, align 8
  %52 = load %struct.sock*, %struct.sock** %20, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load %struct.sock*, %struct.sock** %20, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = call i32 @refcount_inc_not_zero(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store %struct.sock* null, %struct.sock** %20, align 8
  br label %60

60:                                               ; preds = %59, %54, %36
  br label %73

61:                                               ; preds = %34
  %62 = load %struct.net*, %struct.net** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.net_device*, %struct.net_device** %18, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.sock* @inet_lookup_established(%struct.net* %62, i32* @tcp_hashinfo, i32 %63, i32 %64, i32 %65, i32 %66, i32 %69)
  store %struct.sock* %70, %struct.sock** %20, align 8
  br label %73

71:                                               ; preds = %34
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %71, %61, %60
  br label %120

74:                                               ; preds = %9
  %75 = load %struct.net*, %struct.net** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.net_device*, %struct.net_device** %18, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.sock* @udp4_lib_lookup(%struct.net* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %82)
  store %struct.sock* %83, %struct.sock** %20, align 8
  %84 = load %struct.sock*, %struct.sock** %20, align 8
  %85 = icmp ne %struct.sock* %84, null
  br i1 %85, label %86, label %117

86:                                               ; preds = %74
  %87 = load %struct.sock*, %struct.sock** %20, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @TCP_ESTABLISHED, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %23, align 4
  %93 = load %struct.sock*, %struct.sock** %20, align 8
  %94 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %107

101:                                              ; preds = %86
  %102 = load i32, i32* %23, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104, %86
  %108 = load i32, i32* %19, align 4
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %23, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110, %104, %101
  %114 = load %struct.sock*, %struct.sock** %20, align 8
  %115 = call i32 @sock_put(%struct.sock* %114)
  store %struct.sock* null, %struct.sock** %20, align 8
  br label %116

116:                                              ; preds = %113, %110, %107
  br label %117

117:                                              ; preds = %116, %74
  br label %120

118:                                              ; preds = %9
  %119 = call i32 @WARN_ON(i32 1)
  store %struct.sock* null, %struct.sock** %20, align 8
  br label %120

120:                                              ; preds = %118, %117, %73
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @ntohl(i32 %122)
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @ntohs(i32 %124)
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @ntohl(i32 %126)
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @ntohs(i32 %128)
  %130 = load i32, i32* %19, align 4
  %131 = load %struct.sock*, %struct.sock** %20, align 8
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %123, i32 %125, i32 %127, i32 %129, i32 %130, %struct.sock* %131)
  %133 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %133, %struct.sock** %10, align 8
  br label %134

134:                                              ; preds = %120, %33
  %135 = load %struct.sock*, %struct.sock** %10, align 8
  ret %struct.sock* %135
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.tcphdr*) #1

declare dso_local i64 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.sock* @inet_lookup_listener(%struct.net*, i32*, %struct.sk_buff*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__tcp_hdrlen(%struct.tcphdr*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local %struct.sock* @inet_lookup_established(%struct.net*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.sock* @udp4_lib_lookup(%struct.net*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, %struct.sock*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
