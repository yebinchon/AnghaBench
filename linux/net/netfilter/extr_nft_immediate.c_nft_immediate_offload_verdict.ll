; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_offload_verdict.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_offload_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { i32 }
%struct.nft_flow_rule = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i32 }
%struct.nft_immediate_expr = type { %struct.nft_data }
%struct.nft_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FLOW_ACTION_ACCEPT = common dso_local global i32 0, align 4
@FLOW_ACTION_DROP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_immediate_expr*)* @nft_immediate_offload_verdict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_immediate_offload_verdict(%struct.nft_offload_ctx* %0, %struct.nft_flow_rule* %1, %struct.nft_immediate_expr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_offload_ctx*, align 8
  %6 = alloca %struct.nft_flow_rule*, align 8
  %7 = alloca %struct.nft_immediate_expr*, align 8
  %8 = alloca %struct.flow_action_entry*, align 8
  %9 = alloca %struct.nft_data*, align 8
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %5, align 8
  store %struct.nft_flow_rule* %1, %struct.nft_flow_rule** %6, align 8
  store %struct.nft_immediate_expr* %2, %struct.nft_immediate_expr** %7, align 8
  %10 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %11 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.flow_action_entry*, %struct.flow_action_entry** %14, align 8
  %16 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %15, i64 %20
  store %struct.flow_action_entry* %21, %struct.flow_action_entry** %8, align 8
  %22 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %7, align 8
  %23 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %22, i32 0, i32 0
  store %struct.nft_data* %23, %struct.nft_data** %9, align 8
  %24 = load %struct.nft_data*, %struct.nft_data** %9, align 8
  %25 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @FLOW_ACTION_ACCEPT, align 4
  %30 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %31 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @FLOW_ACTION_DROP, align 4
  %34 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %35 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %32, %28
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
