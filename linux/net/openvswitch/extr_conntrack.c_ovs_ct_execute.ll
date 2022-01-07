; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_execute.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ovs_conntrack_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OVS_FRAG_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_ct_execute(%struct.net* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, %struct.ovs_conntrack_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca %struct.ovs_conntrack_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %8, align 8
  store %struct.ovs_conntrack_info* %3, %struct.ovs_conntrack_info** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i32 @skb_network_offset(%struct.sk_buff* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @skb_pull_rcsum(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call i32 @ovs_skb_network_trim(%struct.sk_buff* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %4
  %24 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %25 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OVS_FRAG_TYPE_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.net*, %struct.net** %6, align 8
  %32 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %33 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %9, align 8
  %34 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @handle_fragments(%struct.net* %31, %struct.sw_flow_key* %32, i32 %36, %struct.sk_buff* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %78

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %9, align 8
  %46 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.net*, %struct.net** %6, align 8
  %51 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %52 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %9, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @ovs_ct_commit(%struct.net* %50, %struct.sw_flow_key* %51, %struct.ovs_conntrack_info* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %11, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load %struct.net*, %struct.net** %6, align 8
  %57 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %58 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @ovs_ct_lookup(%struct.net* %56, %struct.sw_flow_key* %57, %struct.ovs_conntrack_info* %58, %struct.sk_buff* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @skb_push(%struct.sk_buff* %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %65, i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %61
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %41, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_skb_network_trim(%struct.sk_buff*) #1

declare dso_local i32 @handle_fragments(%struct.net*, %struct.sw_flow_key*, i32, %struct.sk_buff*) #1

declare dso_local i32 @ovs_ct_commit(%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*) #1

declare dso_local i32 @ovs_ct_lookup(%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
