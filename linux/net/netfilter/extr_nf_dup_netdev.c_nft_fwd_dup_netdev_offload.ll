; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_dup_netdev.c_nft_fwd_dup_netdev_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_dup_netdev.c_nft_fwd_dup_netdev_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { i32, i32 }
%struct.nft_flow_rule = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_fwd_dup_netdev_offload(%struct.nft_offload_ctx* %0, %struct.nft_flow_rule* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_offload_ctx*, align 8
  %7 = alloca %struct.nft_flow_rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.flow_action_entry*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %6, align 8
  store %struct.nft_flow_rule* %1, %struct.nft_flow_rule** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.net_device* @dev_get_by_index(i32 %14, i32 %15)
  store %struct.net_device* %16, %struct.net_device** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %11, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %7, align 8
  %24 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.flow_action_entry*, %struct.flow_action_entry** %27, align 8
  %29 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %28, i64 %33
  store %struct.flow_action_entry* %34, %struct.flow_action_entry** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %37 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %11, align 8
  %39 = load %struct.flow_action_entry*, %struct.flow_action_entry** %10, align 8
  %40 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %39, i32 0, i32 1
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %22, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
