; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_tuple_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_tuple_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_offload_tuple = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.flow_ports = type { i32, i32 }
%struct.iphdr = type { i32, i64, i32, i32, i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.flow_offload_tuple*)* @nf_flow_tuple_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_tuple_ip(%struct.sk_buff* %0, %struct.net_device* %1, %struct.flow_offload_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flow_offload_tuple*, align 8
  %8 = alloca %struct.flow_ports*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flow_offload_tuple* %2, %struct.flow_offload_tuple** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 32)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %105

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %16)
  store %struct.iphdr* %17, %struct.iphdr** %10, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %23 = call i64 @ip_is_fragment(%struct.iphdr* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ip_has_options(i32 %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %15
  store i32 -1, i32* %4, align 4
  br label %105

31:                                               ; preds = %25
  %32 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPPROTO_TCP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPPROTO_UDP, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %105

44:                                               ; preds = %37, %31
  %45 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %105

50:                                               ; preds = %44
  %51 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = add i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @pskb_may_pull(%struct.sk_buff* %55, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %105

63:                                               ; preds = %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i64 @skb_network_header(%struct.sk_buff* %64)
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = inttoptr i64 %68 to %struct.flow_ports*
  store %struct.flow_ports* %69, %struct.flow_ports** %8, align 8
  %70 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %74 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %80 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.flow_ports*, %struct.flow_ports** %8, align 8
  %83 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %86 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.flow_ports*, %struct.flow_ports** %8, align 8
  %88 = getelementptr inbounds %struct.flow_ports, %struct.flow_ports* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %91 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @AF_INET, align 4
  %93 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %94 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %99 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %7, align 8
  %104 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %63, %62, %49, %43, %30, %14
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_has_options(i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
