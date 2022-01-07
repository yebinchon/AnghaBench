; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_prepare_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_prepare_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.ovs_frag_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.vport*, i32 }

@ovs_frag_data_storage = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*, %struct.sk_buff*, i32, i32)* @prepare_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_frag(%struct.vport* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vport*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ovs_frag_data*, align 8
  store %struct.vport* %0, %struct.vport** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @skb_network_offset(%struct.sk_buff* %11)
  store i32 %12, i32* %9, align 4
  %13 = call %struct.ovs_frag_data* @this_cpu_ptr(i32* @ovs_frag_data_storage)
  store %struct.ovs_frag_data* %13, %struct.ovs_frag_data** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %18 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 8
  %19 = load %struct.vport*, %struct.vport** %5, align 8
  %20 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %21 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %20, i32 0, i32 8
  store %struct.vport* %19, %struct.vport** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32* @OVS_CB(%struct.sk_buff* %22)
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %26 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %31 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %34 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %39)
  %41 = load i32, i32* @VLAN_CFI_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %44 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %48

45:                                               ; preds = %4
  %46 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %47 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %53 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %56 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %59 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %10, align 8
  %61 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %60, i32 0, i32 2
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @memcpy(i32* %61, i32 %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @IPCB(%struct.sk_buff* %67)
  %69 = call i32 @memset(i32 %68, i32 0, i32 4)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @skb_pull(%struct.sk_buff* %70, i32 %71)
  ret void
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ovs_frag_data* @this_cpu_ptr(i32*) #1

declare dso_local i32* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
