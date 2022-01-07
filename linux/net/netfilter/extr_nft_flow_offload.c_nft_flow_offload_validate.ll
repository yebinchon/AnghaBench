; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_data = type { i32 }

@NF_INET_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nft_data**)* @nft_flow_offload_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_flow_offload_validate(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nft_data** %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_data**, align 8
  %7 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  store %struct.nft_data** %2, %struct.nft_data*** %6, align 8
  %8 = load i32, i32* @NF_INET_FORWARD, align 4
  %9 = shl i32 1, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @nft_chain_validate_hooks(i32 %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @nft_chain_validate_hooks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
