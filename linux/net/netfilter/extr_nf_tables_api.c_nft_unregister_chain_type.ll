; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_unregister_chain_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_unregister_chain_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain_type = type { i64, i64 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@chain_type = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_unregister_chain_type(%struct.nft_chain_type* %0) #0 {
  %2 = alloca %struct.nft_chain_type*, align 8
  store %struct.nft_chain_type* %0, %struct.nft_chain_type** %2, align 8
  %3 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %4 = call i32 @nfnl_lock(i32 %3)
  %5 = load i32***, i32**** @chain_type, align 8
  %6 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %7 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32**, i32*** %5, i64 %8
  %10 = load i32**, i32*** %9, align 8
  %11 = load %struct.nft_chain_type*, %struct.nft_chain_type** %2, align 8
  %12 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32*, i32** %10, i64 %13
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %16 = call i32 @nfnl_unlock(i32 %15)
  ret void
}

declare dso_local i32 @nfnl_lock(i32) #1

declare dso_local i32 @nfnl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
