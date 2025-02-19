; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ip.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_ip.c_nf_flow_nat_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_offload = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }

@FLOW_OFFLOAD_SNAT = common dso_local global i32 0, align 4
@FLOW_OFFLOAD_DNAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_offload*, %struct.sk_buff*, i32, i32)* @nf_flow_nat_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_flow_nat_ip(%struct.flow_offload* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_offload*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  store %struct.flow_offload* %0, %struct.flow_offload** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %11)
  store %struct.iphdr* %12, %struct.iphdr** %10, align 8
  %13 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %14 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FLOW_OFFLOAD_SNAT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  %20 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @nf_flow_snat_port(%struct.flow_offload* %20, %struct.sk_buff* %21, i32 %22, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @nf_flow_snat_ip(%struct.flow_offload* %30, %struct.sk_buff* %31, %struct.iphdr* %32, i32 %33, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %19
  store i32 -1, i32* %5, align 4
  br label %65

38:                                               ; preds = %29, %4
  %39 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %40 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FLOW_OFFLOAD_DNAT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @nf_flow_dnat_port(%struct.flow_offload* %46, %struct.sk_buff* %47, i32 %48, i32 %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %45
  %56 = load %struct.flow_offload*, %struct.flow_offload** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @nf_flow_dnat_ip(%struct.flow_offload* %56, %struct.sk_buff* %57, %struct.iphdr* %58, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55, %45
  store i32 -1, i32* %5, align 4
  br label %65

64:                                               ; preds = %55, %38
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %63, %37
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @nf_flow_snat_port(%struct.flow_offload*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nf_flow_snat_ip(%struct.flow_offload*, %struct.sk_buff*, %struct.iphdr*, i32, i32) #1

declare dso_local i64 @nf_flow_dnat_port(%struct.flow_offload*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nf_flow_dnat_ip(%struct.flow_offload*, %struct.sk_buff*, %struct.iphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
