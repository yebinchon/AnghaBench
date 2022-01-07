; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }

@FLOW_OFFLOAD_SNAT = common dso_local global i32 0, align 4
@FLOW_OFFLOAD_DNAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_offload*, %struct.sk_buff*, i32)* @nf_flow_nat_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_nat_ipv6(%struct.flow_offload* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flow_offload*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.flow_offload* %0, %struct.flow_offload** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %10)
  store %struct.ipv6hdr* %11, %struct.ipv6hdr** %8, align 8
  store i32 4, i32* %9, align 4
  %12 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %13 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FLOW_OFFLOAD_SNAT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @nf_flow_snat_port(%struct.flow_offload* %19, %struct.sk_buff* %20, i32 %21, i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %18
  %29 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @nf_flow_snat_ipv6(%struct.flow_offload* %29, %struct.sk_buff* %30, %struct.ipv6hdr* %31, i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %18
  store i32 -1, i32* %4, align 4
  br label %64

37:                                               ; preds = %28, %3
  %38 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %39 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FLOW_OFFLOAD_DNAT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %49 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @nf_flow_dnat_port(%struct.flow_offload* %45, %struct.sk_buff* %46, i32 %47, i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = load %struct.flow_offload*, %struct.flow_offload** %5, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @nf_flow_dnat_ipv6(%struct.flow_offload* %55, %struct.sk_buff* %56, %struct.ipv6hdr* %57, i32 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54, %44
  store i32 -1, i32* %4, align 4
  br label %64

63:                                               ; preds = %54, %37
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %36
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @nf_flow_snat_port(%struct.flow_offload*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nf_flow_snat_ipv6(%struct.flow_offload*, %struct.sk_buff*, %struct.ipv6hdr*, i32, i32) #1

declare dso_local i64 @nf_flow_dnat_port(%struct.flow_offload*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nf_flow_dnat_ipv6(%struct.flow_offload*, %struct.sk_buff*, %struct.ipv6hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
