; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_offload_th.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_offload_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_flow_rule = type { i32 }
%struct.nft_payload = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_payload*)* @nft_payload_offload_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_payload_offload_th(%struct.nft_offload_ctx* %0, %struct.nft_flow_rule* %1, %struct.nft_payload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_offload_ctx*, align 8
  %6 = alloca %struct.nft_flow_rule*, align 8
  %7 = alloca %struct.nft_payload*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %5, align 8
  store %struct.nft_flow_rule* %1, %struct.nft_flow_rule** %6, align 8
  store %struct.nft_payload* %2, %struct.nft_payload** %7, align 8
  %9 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 128, label %18
  ]

13:                                               ; preds = %3
  %14 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %15 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %16 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %17 = call i32 @nft_payload_offload_tcp(%struct.nft_offload_ctx* %14, %struct.nft_flow_rule* %15, %struct.nft_payload* %16)
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %3
  %19 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %20 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %6, align 8
  %21 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %22 = call i32 @nft_payload_offload_udp(%struct.nft_offload_ctx* %19, %struct.nft_flow_rule* %20, %struct.nft_payload* %21)
  store i32 %22, i32* %8, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @nft_payload_offload_tcp(%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_payload*) #1

declare dso_local i32 @nft_payload_offload_udp(%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
