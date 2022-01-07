; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { i32 }
%struct.nft_flow_rule = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_cmp_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)* @nft_cmp_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_cmp_offload(%struct.nft_offload_ctx* %0, %struct.nft_flow_rule* %1, %struct.nft_expr* %2) #0 {
  %4 = alloca %struct.nft_offload_ctx*, align 8
  %5 = alloca %struct.nft_flow_rule*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_cmp_expr*, align 8
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %4, align 8
  store %struct.nft_flow_rule* %1, %struct.nft_flow_rule** %5, align 8
  store %struct.nft_expr* %2, %struct.nft_expr** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %9 = call %struct.nft_cmp_expr* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_cmp_expr* %9, %struct.nft_cmp_expr** %7, align 8
  %10 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %4, align 8
  %11 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %5, align 8
  %12 = load %struct.nft_cmp_expr*, %struct.nft_cmp_expr** %7, align 8
  %13 = call i32 @__nft_cmp_offload(%struct.nft_offload_ctx* %10, %struct.nft_flow_rule* %11, %struct.nft_cmp_expr* %12)
  ret i32 %13
}

declare dso_local %struct.nft_cmp_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @__nft_cmp_offload(%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_cmp_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
