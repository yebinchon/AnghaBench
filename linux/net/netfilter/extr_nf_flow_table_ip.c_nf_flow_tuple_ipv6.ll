; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_tuple_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_tuple_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_offload_tuple = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.flow_ports = type { i32, i32 }
%struct.ipv6hdr = type { i64, i32, i32, i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.flow_offload_tuple*)* @nf_flow_tuple_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_tuple_ipv6(%struct.sk_buff* %0, %struct.net_device* %1, %struct.flow_offload_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flow_offload_tuple*, align 8
  %8 = alloca %struct.flow_ports*, align 8
  %9 = alloca %struct.ipv6hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flow_offload_tuple* %2, %struct.flow_offload_tuple** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 24)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %85

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %16)
  store %struct.ipv6hdr* %17, %struct.ipv6hdr** %9, align 8
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_TCP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %25 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPPROTO_UDP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %85

30:                                               ; preds = %23, %15
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %85

36:                                               ; preds = %30
  store i32 24, i32* %10, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @pskb_may_pull(%struct.sk_buff* %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %85

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i64 @skb_network_header(%struct.sk_buff* %46)
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = inttoptr i64 %50 to %struct.flow_ports*
  store %struct.flow_ports* %51, %struct.flow_ports** %8, align 8
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %56 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %61 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.flow_ports*, %struct.flow_ports** %8, align 8
  %63 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %66 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.flow_ports*, %struct.flow_ports** %8, align 8
  %68 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %71 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @AF_INET6, align 4
  %73 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %74 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %76 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %79 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %84 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %45, %44, %35, %29, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
